require 'net/http'
require 'uri'
require 'json'
require 'date'
require 'time'

def http_request(clazz, url, body)
    uri = URI.parse(url)
    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true
    request = clazz.new(uri.request_uri,'Content-Type' => 'application/json')
    request.body = body.to_json
    request.basic_auth ENV["username"], ENV["password"]
    response = https.request(request)
end

def http_get(url, body)
    http_request(Net::HTTP::Get, url, body)
end

def http_post(url, body)
    http_request(Net::HTTP::Post, url, body)
end
def http_put(url, body)
    http_request(Net::HTTP::Put, url, body)
end

class CodeIntegration
    def self.dump_event(event:, context:)
        puts JSON.pretty_generate(event)
        {}
    end
    def self.record_interaction(event:, context:)
        puts JSON.pretty_generate(event)
        attributes = event["Details"]["ContactData"]["Attributes"]
        parameters = event["Details"]["Parameters"]
        body = {
            engagement:
            {
                user_id: attributes["UserId"],
                reason_code_id: attributes["ReasonCodeId"],
                encounter_date: Date.today,
                coach_id: attributes["CoachId"],
                channel: "phone",
                time_spent: 1,
                additional_time_spent: 1,
                interaction_notes: parameters["InteractionNotes"],
                subject: parameters["Subject"],
                appointment_id: attributes["AppointmentId"],
                reference_number:event["Details"]["ContactData"]["ContactId"]
            }
        }
        response=http_post("#{attributes["Hostname"]}/api/engagement.json", body)
        {}
    end

    # rules:
    # try to get the schedule at the same time of day
    # fallback to any time of day for same coach
    # fallback to same time of day for any coach
    # fallback to any time of day for any coach
    def self.get_schedule_with_fallback(event:, context:)
        puts JSON.pretty_generate(event)
        attributes = event["Details"]["ContactData"]["Attributes"]
        event["Details"]["Parameters"]||={}
        event["Details"]["Parameters"]["PartOfDay"]="SamePartOfDay"
        result = get_schedule(event: event, context: context)
        if(result[:number_slots] == 0)
            event["Details"]["Parameters"]["PartOfDay"]=nil
            result = get_schedule(event: event, context: context)
            result["Flavor"]="SameCoach" if(result[:number_slots] > 0)
            # only retry if the coach was specified && it is allowed
            if(result[:number_slots] == 0 && event["Details"]["Parameters"]["CoachId"] && attributes["CanOfferOtherAssignees"])
                event["Details"]["Parameters"]["PartOfDay"]="SamePartOfDay"
                event["Details"]["Parameters"]["CoachId"]=nil
                result = get_schedule(event: event, context: context)
                if(result[:number_slots] == 0)
                    event["Details"]["Parameters"]["PartOfDay"]=nil
                    result = get_schedule(event: event, context: context)
                end
                result["Flavor"]="DifferentCoach"
            end
        else
            result["Flavor"]="SameCoach"
        end
        result
    end

    def self.get_schedule(event:, context:)
        attributes = event["Details"]["ContactData"]["Attributes"]
        parameters = event["Details"]["Parameters"]
        body = {
            user_id: attributes["UserId"],
            assignee_id: parameters["CoachId"],
            reason_code_id: attributes["ReasonCodeId"],
            start_date: Date.today,
            end_date: Date.today + 7, # 2.weeks.
            channel: "phone",
            limit: parameters["Limit"],
        }
        body[:part_of_day]= parameters["PartOfDay"] if parameters["PartOfDay"]
        if(parameters["SamePartOfDay"])
            val = case attributes["StartAtTime"].to_i
            when 0..12 then 'morning'
            when 12..5 then  'afternoon'
            else 'evening'
            end
            body[:part_of_day] = val
        end

        response=http_get("#{attributes["Hostname"]}/api/scheduling",body)
        var = JSON.parse(response.body)
        var["appointments"].map {|hash|
            time = Time.parse(hash["free_time_slot"]["start_at_in_time_zone"])
            hash["free_time_slot"]["start_at_friendly_format"] = time.strftime("%A, %B %e at %l %P")
        }
        puts JSON.pretty_generate(var)
        if(var["appointments"].empty?)
            {number_slots: 0}
        else
            free_slots=var["appointments"].map {|hash|hash["free_time_slot"]}
            slot_index = parameters["slotIndex"] || 0
            final_answer = var["appointments"][slot_index]["free_time_slot"].merge({number_slots: var["appointments"].size, free_slots_cached: free_slots.to_json})
            puts JSON.pretty_generate(final_answer)
            final_answer
        end
    end
    def self.get_schedule_cached(event:, context:)
        puts JSON.pretty_generate(event)
        attributes = event["Details"]["ContactData"]["Attributes"]
        parameters = event["Details"]["Parameters"]
        free_slots = JSON.parse(attributes["FreeSlotsCached"])
        free_slots[parameters["SlotIndex"]&.to_i]
    end
    def self.reschedule_appointment(event:, context:)
        puts JSON.pretty_generate(event)
        attributes = event["Details"]["ContactData"]["Attributes"]
        parameters = event["Details"]["Parameters"]
        body = {
            appointment:
            {
                reason_code_id: attributes["ReasonCodeId"],
                start_at: attributes["StartAt"],
                assignee_id: attributes["AssigneeId"],
                user_id: attributes["UserId"],
                channel: "phone",
            }
        }
        http_put("#{attributes["Hostname"]}/api/scheduling/#{attributes["AppointmentId"]}/reschedule", body)
        {}
    end

    def self.confirm_appointment(event:, context:)
        puts JSON.pretty_generate(event)
        attributes = event["Details"]["ContactData"]["Attributes"]
        parameters = event["Details"]["Parameters"]
        http_put("#{attributes["Hostname"]}/api/scheduling/#{attributes["AppointmentId"]}/confirm", {})
        {}
    end
    def self.cancel_appointment(event:, context:)
        puts JSON.pretty_generate(event)
        attributes = event["Details"]["ContactData"]["Attributes"]
        parameters = event["Details"]["Parameters"]
        http_put("#{attributes["Hostname"]}/api/scheduling/#{attributes["AppointmentId"]}/cancel",{})
        {}
    end
end

# ENV["username"] = "user-1"
# ENV["password"] = "stagingPassword123!"
# CodeIntegration.record_interaction(event:
# {"Details": {
#     "ContactData": {
#         "Attributes": {
#             "Hostname": "http://localhost:3000"
#         },
#         "ContactId": "123"
#     },
#     "Parameters" : {
#         "InteractionNotes": "Error",
#         "Subject": "Error"
#     }
# }},
# context: {}
# )
