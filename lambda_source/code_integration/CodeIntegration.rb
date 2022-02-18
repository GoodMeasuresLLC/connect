require 'json/pure'
require 'httparty'
class CodeIntegration
    include HTTParty

    def self.handle_human_not_answered(event:, context:)
        attributes = event["Details"]["ContactData"]["Attributes"]
        post_body = {
            user_id: attributes["UserId"],
            reason_code_id: attributes["ReasonCodeId"],
            encounter_date: Date.today,
            coach_id: attributes["CoachId"],
            channel: "phone",
            time_spent: 1,
            additional_time_spent: 1,
            interaction_notes: "User did not answer the phone. Left voicemail.",
            subject: "Automated Appointment Reminder",
            appointment_id: attributes["AppointmentId"],
        }

        auth = {
            username: ENV["ameliaUsername"],
            password: ENV["ameliaPassword"]
        }
        
        post("#{attributes["Hostname"]}/api/engagement.json", :body => post_body.to_json, basic_auth: auth)
    end
end

CodeIntegration.handle_human_not_answered