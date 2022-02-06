import json
import os
import boto3
from datetime import datetime

def lambda_handler(event, context):
	print(event)
	dynamodb = boto3.resource('dynamodb', region_name=os.environ['DynamoDB_Region'])
	table = dynamodb.Table(os.environ['Table_Name'])

	ContactID = event['Details']['ContactData']['ContactId']
	if event['Details']['ContactData']['CustomerEndpoint']['Type'] == 'TELEPHONE_NUMBER':
		PhoneNum = event['Details']['ContactData']['CustomerEndpoint']['Address']
	else:
		PhoneNum = "None"
	if 'ExtensionName' in event['Details']['ContactData']['Attributes']:
		ExtensionName = event['Details']['ContactData']['Attributes']['ExtensionName']
	else:
		ExtensionName = None
	if 'VMSource' in event['Details']['ContactData']['Attributes']:
		VMSource = event['Details']['ContactData']['Attributes']['VMSource']
	else:
		VMSource = None
	if 'Extension' in event['Details']['ContactData']['Attributes']:
		Extension = event['Details']['ContactData']['Attributes']['Extension']
	else:
		Extension = None
	if 'QueueName' in event['Details']['ContactData']['Attributes']:
		QueueName = event['Details']['ContactData']['Attributes']['QueueName']
	else:
		QueueName = None

	CreationTime = datetime.utcnow().isoformat()
	
	Data = {
		'ContactID': ContactID,
		'CreationTime': CreationTime,
		'PhoneNum': PhoneNum,
		'QueueName': QueueName
    }
	if ExtensionName:
		Data['ExtensionName'] = ExtensionName
	if Extension:
		Data['Extension'] = Extension
	if VMSource:
		Data['VMSource'] = VMSource
	response = table.put_item(
		Item=Data
	)
	return {
		'statusCode': 200,
		'body': "Sucessfully created table row!"
    }