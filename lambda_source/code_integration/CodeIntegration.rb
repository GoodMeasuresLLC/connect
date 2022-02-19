require 'net/http'
require 'uri'
require 'json'
require 'date'
class CodeIntegration
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
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        request = Net::HTTP::Post.new(uri.request_uri)
        request.body = body.to_json
        request.basic_auth ENV["username"], ENV["password"]
        response = http.request(request)
    end
end

# ENV["username"] = "user-1"
# ENV["password"] = "stagingPassword123!"
# CodeIntegration.record_interaction(event:
#  {"Details" => {
#     "ContactData" => {
#         "Attributes" => {
#             # "Hostname" => "http://localhost:3000"
#             "Hostname" => "https://77d6-130-44-150-166.ngrok.io"
#         },
#         "ContactId" => "123"
#     }
# }},
# context: {}
# )
