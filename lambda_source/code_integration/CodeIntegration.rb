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

def time_for_api(time, timezone_name)
    Time.parse(time).in_time_zone(timezone_name).utc
end

class CodeIntegration
    # normalize the wonky time times they give us
    def self.normalize_time_periods(event:, content: )
        value = case event["Details"]["Parameters"]["TimeOfDay"]
        when "NI" then "evening"
        when "MO" then "morning"
        when "AF" then "afternoon"
        when "EV" then "evening"
        else
            event["Details"]["Parameters"]["TimeOfDay"]
        end
        {
            TimeOfDay: value
        }
    end

    def self.dump_event(event:, context:)
        puts JSON.pretty_generate(event)
        puts JSON.pretty_generate(context)
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

<<DOC
If scheduling for same coach
- schedule for same coach using preferences
- if number_slots < limit
    schedule for same coach ignoring preferences
- if number_slots < limit
    schedule for any coach using preferences
- if number_slots < limit
    schedule for any ignoring preferences
- sort slots by: same coach, preference-match
Otherwise
- if number_slots < limit
    schedule for any coach using preferences
- if number_slots < limit
    schedule for any ignoring preferences
- sort slots by: same coach, preference-match

DOC

    def self.get_schedule(event:, context:)
        puts JSON.pretty_generate(event)
        attributes = event["Details"]["ContactData"]["Attributes"]
        parameters = event["Details"]["Parameters"]
        limit = parameters["Limit"] || 5
        slots = []
        if(attributes["AssigneeId"] && !attributes["CanOfferOtherAssignees"])
            slots.push(get_schedule_helper(attributes["AssigneeId"], parameters["Preference"], event: event, context: context))
            if(slots.size < limit)
                slots.push(get_schedule_helper(attributes["AssigneeId"], "none", event: event, context: context))
            end
        end
        if(slots.size < limit)
            slots.push(get_schedule_helper(attributes["AssigneeId"], parameters["Preference"], event: event, context: context))
        end
        if(slots.size < limit)
            slots.push(get_schedule_helper(attributes["AssigneeId"], "none", event: event, context: context))
        end
        slots = sort_slots(slots, parameters, attributes)
        {
            number_slots: slots.size,
            slot_index: 0,
            free_slots_cached: slots.to_json
        }
    end

        #     "free_time_slot": {
        #         "reason_code_id": 39,
        #         "user_id": 95,
        #         "timezone_name": "America/New_York",
        #         "start_at": "2022-03-17T12:00:00Z",
        #         "duration": 1800,
        #         "member_end_at": "2022-03-17T12:20:00Z",
        #         "coach_end_at": "2022-03-17T12:30:00Z",
        #         "channel": null,
        #         "assignee_id": 23521,
        #         "assignee_name": "Kaylen Brown",
        #         "assignee_ids": [
        #             23521,
        #             6737,
        #             31964
        #         ],
        #         "reason_code_name": "Initial Assessment",
        #         "start_at_in_time_zone": "2022-03-17T08:00:00-04:00",
        #         "member_end_at_in_time_zone": "2022-03-17T08:20:00-04:00",
        #         "coach_end_at_in_time_zone": "2022-03-17T08:30:00-04:00",
        #         "start_at_friendly_format": "Thursday, March 17 at  8:00 am"
        #     }
        # },

    def self.sort_slots(slots, parameters, attributes)
        slots.sort_by do |slot|
            puts "slot=#{slot}"
            slot_time = Time.parse(slot["free_time_slot"]["start_at_in_time_zone"]).strftime("%H%M").to_i
            case parameters["Preference"]
            when %W(same_time before after) then time_of_day.to_i - slot_time
            when "around"
                if(time_of_day =~ /d+/)
                    (time_of_day.to_i - slot_time).abs
                else
                    slot_time
                end
            when "between" then
                slot_time - parameters["StartTime"].to_i
            else
                slot_time
            end
        end
    end

    def self.get_schedule_helper(coach_id, preference, event:, context:)
        attributes = event["Details"]["ContactData"]["Attributes"]
        parameters = event["Details"]["Parameters"]
        body = {
            user_id: attributes["UserId"],
            assignee_id: coach_id,
            reason_code_id: attributes["ReasonCodeId"],
            start_date: Date.today,
            end_date: Date.today + 14, # 2.weeks.
            channel: "phone",
            limit: parameters["Limit"] || 5,
        }
        case preference
        when "same_time"
            body[:part_of_day] = case attributes["StartAtTime"].to_i
            when 0..12 then 'morning'
            when 12..5 then  'afternoon'
            else 'evening'
            end
        when "around"
            if parameters["TimeOfDay"] =~ /\w+/
                body[:part_of_day] = parameters["TimeOfDay"]
            else
                # "22:00"
                time = time_for_api(parameters["TimeOfDay"], attributes["TimezoneName"])
                body[:start_time]= time - 1.hour
                body[:end_time] = time + 1.hour
            end
        when "before"
            time = time_for_api(parameters["TimeOfDay"], attributes["TimezoneName"])
            body[:end_time] = time
        when "after"
            time = time_for_api(parameters["TimeOfDay"], attributes["TimezoneName"])
            body[:start_time] = time
        when "between"
            body[:start_time]= time_for_api(parameters["StartTime"], attributes["TimezoneName"])
            body[:end_time] = time_for_api(parameters["EndTime"], attributes["TimezoneName"])
        when "none"
            # just in case
            body.delete(:start_time)
            body.delete(:end_time)
            body.delete(:part_of_day)
        end

        response=http_get("#{attributes["Hostname"]}/api/scheduling",body)
        var = JSON.parse(response.body)
        var["appointments"].map {|hash|
            time = Time.parse(hash["free_time_slot"]["start_at_in_time_zone"])
            hash["free_time_slot"]["start_at_friendly_format"] = time.strftime("%A, %B %e at %l:%M %P")
        }
        puts JSON.pretty_generate(var)
        var["appointments"]
    end
    def self.get_schedule_cached(event:, context:)
        puts JSON.pretty_generate(event)
        attributes = event["Details"]["ContactData"]["Attributes"]
        free_slots = JSON.parse(attributes["FreeSlotsCached"])
        slot_index = attributes["SlotIndex"]&.to_i
        free_slots[slot_index].merge(slot_index: slot_index + 1)
    end

    def self.schedule_appointment(event:, context:)
        puts JSON.pretty_generate(event)
        attributes = event["Details"]["ContactData"]["Attributes"]
        free_slot = JSON.parse(attributes["FreeSlotsCached"])[attributes["SlotIndex"]&.to_i]
        body = {
            appointment: free_slot
        }
        # if the appointment id exists, its a reschedule, otherwise we're making a new appointment
        if(attributes["AppointmentId"])
            response = http_put("#{attributes["Hostname"]}/api/scheduling/#{attributes["AppointmentId"]}/reschedule", body)
        else
            response = http_post("#{attributes["Hostname"]}/api/scheduling", body)
        end
        if(response.code == '410')
            {
                Result: 'gone'
            }
        else
            var = JSON.parse(response.body)
            {
                Result: (response.code == '410' ? 'gone' : 'ok' ),
                assignee_name: var["appointments"]["assignee_name"]
            }
        end
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
        http_put("#{attributes["Hostname"]}/api/scheduling/#{attributes["AppointmentId"]}/cancel",{}) if attributes["AppointmentId"]
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
