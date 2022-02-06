require 'json/pure'
require 'httparty'
class GetContact
  include HTTParty

  URL_MAP = {
    "gm-test2" => "https://ef3bebd4.ngrok.io/",
    "gm-code-cct" => "https://code.goodmeasures.com/"
  }

  def self.get_contact_info(query, instance)
    url = "#{URL_MAP[instance]}phone_contact_info/current.json"
    get(url, {:query => query, :headers => {'Content-Type' => 'application/json'}})
  end

  def self.process(event:, context:)
    details = event["Details"] || {}
    instance = (details["Parameters"] || {})["instance"]
    default = (details["Parameters"] || {})["default"]
    contact_data = details["ContactData"] || {}
    contact_id = contact_data["ContactId"]
    to_number = (contact_data["CustomerEndpoint"] || {})["Address"]

    query = {
      to_number: to_number,
      reference_number: contact_id
    }

    parsed_response = get_contact_info(query, instance)&.parsed_response
    val = if phone_call = parsed_response["phone_call"]
      phone_call
    else
      {
        "caller_id" => default,
        "recording_preference" => "Record"
      }
    end
    puts "RESPONSE #{val}"
    val
  end
end
