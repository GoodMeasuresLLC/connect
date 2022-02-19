require 'net/http'
require 'uri'
require 'json'
require 'date'
require 'time'
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

        uri = URI.parse("#{attributes["Hostname"]}/api/engagement.json")
        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true
        request = Net::HTTP::Post.new(uri.request_uri,'Content-Type' => 'application/json')
        request.body = body.to_json
        request.basic_auth ENV["username"], ENV["password"]
        response = https.request(request)
    end
    def self.get_schedule(event:, context:)
        puts JSON.pretty_generate(event)
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

        uri = URI.parse("#{attributes["Hostname"]}/api/scheduling")
        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true
        request = Net::HTTP::Get.new(uri.request_uri,'Content-Type' => 'application/json')
        request.body = body.to_json
        request.basic_auth ENV["username"], ENV["password"]
        response = https.request(request)
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
                encounter_date: Date.today,
                channel: "phone",
                coach_id: attributes["CoachId"],
            }
        }
        uri = URI.parse("#{attributes["Hostname"]}/api/scheduling/#{attributes["AppointmentId"]}/reschedule")
        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true
        request = Net::HTTP::Put.new(uri.request_uri,'Content-Type' => 'application/json')
        request.body = body.to_json
        request.basic_auth ENV["username"], ENV["password"]
        response = https.request(request)
    end

    def self.confirm_appointment(event:, context:)
         puts JSON.pretty_generate(event)
        attributes = event["Details"]["ContactData"]["Attributes"]
        parameters = event["Details"]["Parameters"]
        body = {}
        uri = URI.parse("#{attributes["Hostname"]}/api/scheduling/#{attributes["AppointmentId"]}/confirm")
        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true
        request = Net::HTTP::Put.new(uri.request_uri,'Content-Type' => 'application/json')
        request.body = body.to_json
        request.basic_auth ENV["username"], ENV["password"]
        response = https.request(request)
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
