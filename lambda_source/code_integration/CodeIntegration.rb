require 'net/http'
require 'uri'
require 'json'
require 'date'
require 'time'


class Hash
  def except!(*keys)
    keys.each { |key| delete(key) }
    self
  end
  def except(*keys)
    dup.except!(*keys)
  end
end

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
    def self.normalize_time_periods(event:, context: )
        value = case event["Details"]["Parameters"]["TimeOfDay"]
        when "MO" then "morning"
        when "AF" then "afternoon"
        when "NI" then "evening"
        when "EV" then "evening"
        else
            event["Details"]["Parameters"]["TimeOfDay"]
        end
        if(value =~ /\d\d:\d\d/ )
            (hour,min) = /(\d\d):(\d\d)/
            if hour.to_i > 13
                blerg = "#{hour.to_i - 12}:#{min} pm"
            else
                blerg = "#{hour}:#{min} am"
            end
        end
        {
            TimeOfDay: value,
            TimeOfDayFriendly: (blerg || value)
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
        attributes["AssigneeId"] ||= attributes["CoachId"]
        limit = parameters["Limit"] || 5
        slots = []
        preference = parameters["Preference"] || "none"
        puts %Q(attributes["AssigneeId"]=#{attributes["AssigneeId"]}, attributes["CoachId"]=#{attributes["CoachId"]})
        if attributes["AssigneeId"] # && !attributes["CanOfferOtherAssignees"])
            puts "path A"
            slots.push(*get_schedule_helper(attributes["AssigneeId"], preference, event: event, context: context))
            if(slots.size < limit && preference != "none")
                puts "path B"
                slots.push(*get_schedule_helper(attributes["AssigneeId"], "none", event: event, context: context))
            end
        end
        if(slots.size < limit)
            puts "path C"
            slots.push(*get_schedule_helper(nil, preference, event: event, context: context))
        end
        if(slots.size < limit && preference != "none")
            puts "path D"
            slots.push(*get_schedule_helper(nil, "none", event: event, context: context))
        end
        slots = sort_slots(slots, preference, parameters, attributes)
        {
            number_slots: slots.size,
            slot_index: 0,
            free_slots_cached: slots.to_json
        }
    end

    def self.calculate_preferences(preference, attributes, parameters)
        case preference
        when "same_time"
            part_of_day = case attributes["StartAtTime"].to_i
            when 0..12 then 'morning'
            when 12..5 then  'afternxoon'
            else 'evening'
            end
            {
                part_of_day: part_of_day,
                sort_time: attributes["StartAtTime"].to_i
            }
        when "around"
            if parameters["TimeOfDay"] =~ /\w+/
                convert = case parameters["TimeOfDay"]
                when 'morning' then 0
                when 'afternoon' then 1200
                else 1700
                end
                {
                    part_of_day: parameters["TimeOfDay"],
                    sort_time: convert
                }
            else
                # "22:00"
                time = Time.parse(parameters["TimeOfDay"])
                {
                    start_time: (time - 1.hour).strftime("%H:%M"),
                    end_time: (time + 1.hour).strftime("%H:%M"),
                    sort_time: time.strftime("%H%M")
                }
            end
        when "before"
            {
                end_time: Time.parse(parameters["TimeOfDay"]).strftime("%H:%M"),
                sort_time: Time.parse(parameters["TimeOfDay"]).strftime("%H%M")
            }
        when "after"
            {
                start_time: Time.parse(parameters["TimeOfDay"]).strftime("%H:%M"),
                sort_time: Time.parse(parameters["TimeOfDay"]).strftime("%H%M")
            }
        else
            {}
        end
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

    def self.sort_slots(slots, preference, parameters, attributes)
        sort_time = calculate_preferences(preference, attributes, parameters)["sort_time"]
        slots.map(&:values).flatten.sort_by do |slot|
            puts "slot=#{slot}"
            slot_time = Time.parse(slot["start_at_in_time_zone"]).strftime("%H%M").to_i
            case parameters["Preference"]
            when %W(same_time before after) then sort_time - slot_time
            when "around"
                if(sort_time =~ /d+/)
                    (sort_time - slot_time).abs
                else
                    slot_time
                end
            when "between" then
                slot_time - Time.parse(slot["StartTime"]).strftime("%H%M").to_i
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
            start_date: Time.now.utc + 60*60, # try an hour later after now.
            end_date: Date.today + 14, # 2.weeks.
            channel: "phone",
            limit: parameters["Limit"] || 5,
        }
        body.merge(calculate_preferences(preference,attributes,parameters).slice(:part_of_day, :start_time, :end_time))

        response=http_get("#{attributes["Hostname"]}/api/scheduling",body)
        var = JSON.parse(response.body)
        var["appointments"].map {|hash|
            time = Time.parse(hash["free_time_slot"]["start_at_in_time_zone"])
            hash["free_time_slot"]["start_at_friendly_format"] = time.strftime("%A, %B %e at %l:%M %P")
        }
        puts "get_schedule_helper(coach_id=#{coach_id}, #{preference}, #{body})=#{JSON.pretty_generate(var)}"
        var["appointments"]
    end
    def self.get_schedule_cached(event:, context:)
        puts JSON.pretty_generate(event)
        attributes = event["Details"]["ContactData"]["Attributes"]
        free_slots = JSON.parse(attributes["FreeSlotsCached"])
        slot_index = attributes["SlotIndex"]&.to_i
        result=free_slots[slot_index].except("assignee_ids").merge(slot_index: slot_index + 1)
        puts JSON.pretty_generate(result)
        result
    end

    def self.schedule_appointment(event:, context:)
        puts JSON.pretty_generate(event)
        attributes = event["Details"]["ContactData"]["Attributes"]
        free_slot = JSON.parse(attributes["FreeSlotsCached"])[attributes["SlotIndex"]&.to_i]
        # if the appointment id exists, its a reschedule, otherwise we're making a new appointment
        body = {
            appointment: free_slot.slice(*%W(reason_code_id duration start_at channel user_id assignee_id assignee_ids))
        }
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
                Result: 'ok',
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
