'use strict';

let AWS = require('aws-sdk');
const lambda = new AWS.Lambda();

let m_strRegion = undefined;
let m_strTranscriptionFunctionName = undefined;

let m_strStreamARN  = undefined;
let m_strStartFragmentNum = undefined;
let m_strConnectContactId = undefined;

let m_bTranscriptionEnabled = undefined;
let m_bSaveCallRecording = undefined;
let m_strLanguageCode = undefined;


exports.handler = (event, context, callback) => {

	console.log("Received event from Amazon Connect");
	console.log("Event "+ JSON.stringify(event));
	console.log("Context " + JSON.stringify(context));

	m_strRegion = process.env.REGION;
	m_strTranscriptionFunctionName = process.env.TRANSCRIPTION_FUNCTION_ARN;


	m_strStreamARN = event.Details.ContactData.MediaStreams.Customer.Audio.StreamARN;
	m_strStartFragmentNum =  event.Details.ContactData.MediaStreams.Customer.Audio.StartFragmentNumber;
	m_strConnectContactId = event.Details.ContactData.ContactId;
	m_bTranscriptionEnabled = false;
	m_bSaveCallRecording = event.Details.ContactData.Attributes.saveCallRecording === "true" ? true : false;
	m_strLanguageCode = event.Details.ContactData.Attributes.languageCode;


	AWS.config.update({region: m_strRegion});

	let payload = {
		streamARN: m_strStreamARN,
		startFragmentNum: m_strStartFragmentNum,
		connectContactId: m_strConnectContactId,
		transcriptionEnabled: m_bTranscriptionEnabled,
		saveCallRecording: m_bSaveCallRecording,
		languageCode: m_strLanguageCode
	};

	console.log("Trigger event passed to transcriberFunction" + JSON.stringify(payload));
	const params = {
		'FunctionName': m_strTranscriptionFunctionName,
		// InvocationType is RequestResponse by default
		// LogType is not set so we won't get the last 4K of logs from the invoked function
		// Qualifier is not set so we use $LATEST
		'InvokeArgs': JSON.stringify(payload)
	};


	lambda.invokeAsync(params, function(err, data)
	{
		if (err)
		{
			throw (err);
		}
		else
		{
			console.log("Data " + JSON.stringify(data));
			if (callback)
			{
				callback(null, buildResponse());
			}
			else
			{
				console.log('nothing to callback so letting it go');
			}
		}
	});

	callback(null, buildResponse());
};


function buildResponse() {
	return {
	 lambdaResult:"Success",
		lambdaId: "transcriptiontriggerfunction"
	};
}
