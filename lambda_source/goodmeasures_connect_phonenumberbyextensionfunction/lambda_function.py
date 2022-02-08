import json
import os
import boto3
from boto3.dynamodb.conditions import Key

def lambda_handler(event, context):
    print("New event:")
    print(event)
    extension = int(event['Details']['ContactData']['Attributes']['Extension'])
    
    dynamodb = boto3.resource('dynamodb')
    table = dynamodb.Table(os.environ['TABLE_NAME'])
    response = table.query(
        KeyConditionExpression=Key('Extension').eq(extension)
    )
    
    if response['Count'] >= 1:
        if 'ExtensionType' in response['Items'][0]:
            extension_type = response['Items'][0]['ExtensionType']
        else:
            extension_type = 'Chime'
        
        if extension_type == 'Connect':
            if 'ConnectUser' in response['Items'][0]:
                connect_user  = response['Items'][0]['ConnectUser']
                success = 1
            else:
                connect_user = "None"
                success = 0
        elif extension_type == 'Chime':
            if 'PhoneNumber' in response['Items'][0]:
                chime_number  = response['Items'][0]['PhoneNumber']
                success = 1
            else:
                chime_number = "None"
                success = 0
        elif extension_type == 'ChimeConnect':
            if 'ConnectUser' in response['Items'][0]:
                connect_user  = response['Items'][0]['ConnectUser']
            if 'PhoneNumber' in response['Items'][0]:
                chime_number  = response['Items'][0]['PhoneNumber']
            if connect_user and extension:
                success = 1
            elif phone_number:
                chime_number  = response['Items'][0]['PhoneNumber']
                extension_type = "Chime"
                success = 1 
            elif connect_user:
                chime_number  = response['Items'][0]['PhoneNumber']
                extension_type = "Connect"
                success = 1
            else:
                success = 0
        else:
            success = 0
        
        if 'Name' in response['Items'][0]:
            name = response['Items'][0]['Name']
            first_name = name.split(' ', 1)[0]
        else:
            name = "NoNameFound"
            first_name = "NoNameFound" 
    else:
        chime_number  = "None"
        success = 0
        name = "None"
    if success == 1:
        if extension_type == 'Chime':
            return {
                "SUCCESS": success,
                "ExtensionType": extension_type,
                "ChimeNumber": chime_number,
                "ExtensionName": name,
                "ExtensionNameFirst": first_name
            }
        if extension_type == 'Connect':
            return {
                "SUCCESS": success,
                "ExtensionType": extension_type,
                "ConnectUser": connect_user,
                "ExtensionName": name,
                "ExtensionNameFirst": first_name
            }
        if extension_type == 'ChimeConnect':
            return {
                "SUCCESS": success,
                "ExtensionType": extension_type,
                "ChimeNumber": chime_number,
                "ConnectUser": connect_user,
                "ExtensionName": name,
                "ExtensionNameFirst": first_name
            }
    else:
        return {
            "SUCCESS": success
        }