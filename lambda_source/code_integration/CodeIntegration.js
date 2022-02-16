const http = require('http');

const exampleEvent = {
    "Details": {
        "ContactData": {
            "Attributes": {
                "AssignedFlow": "GM-Corp",
                "CallCategory": "voicemail",
                "DisplayQueueName": "None",
                "QueueARN": "arn:aws:connect:us-east-1:201706955376:instance/03103f71-db62-4f61-9432-4bfae356b3e3/queue/7295540d-c7bd-4aac-9314-e8cae8f55b03",
                "QueueName": "GM Corporate",
                "VMSource": "Corporate General",
                "languageCode": "en-US",
                "saveCallRecording": "true",
                "transcribeCall": "true"
            },
            "Channel": "VOICE",
            "ContactId": "c5740341-e577-4359-a948-c6f96f515ee0",
            "CustomerEndpoint": {
                "Address": "+18032622385",
                "Type": "TELEPHONE_NUMBER"
            },
            "CustomerId": null,
            "Description": null,
            "InitialContactId": "c5740341-e577-4359-a948-c6f96f515ee0",
            "InitiationMethod": "INBOUND",
            "InstanceARN": "arn:aws:connect:us-east-1:201706955376:instance/03103f71-db62-4f61-9432-4bfae356b3e3",
            "LanguageCode": "en-US",
            "MediaStreams": {
                "Customer": {
                    "Audio": {
                        "StartFragmentNumber": "91343852333182942679529990807405457211657215740",
                        "StartTimestamp": "1644942426736",
                        "StreamARN": "arn:aws:kinesisvideo:us-east-1:201706955376:stream/connect-audio-connect-gm-code-cct-contact-bda75f35-f9e0-4ac3-8f6c-bcc060c24e1c/1565018611721"
                    }
                }
            },
            "Name": null,
            "PreviousContactId": "c5740341-e577-4359-a948-c6f96f515ee0",
            "Queue": {
                "ARN": "arn:aws:connect:us-east-1:201706955376:instance/03103f71-db62-4f61-9432-4bfae356b3e3/queue/e95345da-9b32-4714-9a91-b3507e4f4fc6",
                "Name": "Z - Voicemail Queue",
                "OutboundCallerId": {
                    "Address": "+18662516675",
                    "Type": "TELEPHONE_NUMBER"
                }
            },
            "References": {},
            "SystemEndpoint": {
                "Address": "+16175319149",
                "Type": "TELEPHONE_NUMBER"
            }
        },
        "Parameters": {
          "engagement": {
            "user_id": "55629",
            "reason_code_id": "1",
            "encounter_date": "1",
            "coach_id": "1",
            "channel": "1",
            "time_spent": "1",
            "additional_time_spent": "1",
            "interaction_notes": "1",
            "subject": "1",
            "appointment_id": "1",
          }
        }
    },
    "Name": "ContactFlowEvent"
}

// const endpoint = `${process.env.codeHostname}/api/engagement`
// const userEndpoint = "${process.env.codeHostname}/user_sessions.json"
const endpoint = "http://localhost:3000/api/engagement"
const userEndpoint = "http://localhost:3000/user_sessions.json"

function authenticateUser() {
  const loginPostData = {
    username: process.env.AMELIA_USERNAME,
    password: process.env.AMELIA_PASSWORD,
  }

  const options = {
    hostname: 'reqres.in',
    path: userEndpoint,
    method: 'POST',
    port: 443,
    headers: {
      'Content-Type': 'application/json',
    },
  };

  return new Promise((resolve, reject) => {
    const req = http.request(options, (res) => {
      resolve(JSON.stringify(res.statusCode));
    });

    req.on('error', err => {
      reject(new Error(err));
    });

    req.write(JSON.stringify(loginPostData));
    req.end();
  });
}

function gmPostRequest(data) {
  const options = {
    hostname: 'reqres.in',
    path: endpoint,
    method: 'POST',
    port: 443,
    headers: {
      'Content-Type': 'application/json',
    }
  };

  return new Promise((resolve, reject) => {
    const req = http.request(options, (res) => {
      resolve(JSON.stringify(res.statusCode));
    });
    
    req.on('error', err => {
      reject(new Error(err));
    });
    req.write(JSON.stringify(data));
    req.end();
  });
}

exports.handleHumanNotAnswered = async (event, context, callback) => {
    const userData = await authenticateUser()
    
    if (event.Details.ContactData.Attributes.CallCategory === 'voicemail') {
        try {
            const result = await gmPostRequest(exampleEvent.Details.Parameters);
        
            return {
                statusCode: 200,
                headers: {'Content-Type': 'application/json'},
                body: JSON.stringify(result),
            };
        } catch (error) {
          console.log('error', error)
            return {
                statusCode: 400,
                body: error.message,
            };
        }
    }
}

this.handleHumanNotAnswered(exampleEvent)
