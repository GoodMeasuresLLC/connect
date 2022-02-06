import json
import os
import boto3
from boto3.dynamodb.conditions import Key

def lambda_handler(event, context):
    
    print(json.dumps(event))
    sysPhoneNum = event['Details']['ContactData']['SystemEndpoint']['Address']
    formatted_num = format_phone_num(sysPhoneNum)
    
    dynamodb = boto3.resource('dynamodb')
    table = dynamodb.Table('GoodMeasures_Connect_GetNumberInfoTable')
    response = table.query(
        KeyConditionExpression=Key('PhoneNum').eq(formatted_num)
    )
    
    if response['Count'] >= 1:
        if 'Call Flow - Dynamic Greetings' in response['Items'][0]:
            CallFlowDynamicGreeting  = response['Items'][0]['Call Flow - Dynamic Greetings']
        else:
            CallFlowDynamicGreeting = "None"
        if 'Queue Names' in response['Items'][0]:
            QueueNames = response['Items'][0]['Queue Names']
        else:
            QueueNames = "None"
        if "Display Queue Name" in response['Items'][0]:
            DisplayQueueName = response['Items'][0]['Display Queue Name']
        else: 
            DisplayQueueName = "None"
    else:
        CallFlowDynamicGreeting  = "None"
        QueueNames = "None"
        DisplayQueueName = "None"
        
    Status = "success"
        
    if CallFlowDynamicGreeting == "None":
        Status = "failure"
        CallFlowDynamicGreeting = "GM-Main"
    
    if QueueNames == "None":
        Status = "failure"
        QueueNames = "Good Measures Patient Line"
    
    if QueueNames == "AHEAD":
        if DisplayQueueName == "None":
            DisplayQueueName == "AHEAD Study"
        
    ARN = get_ARN(QueueNames)
    
    return_data = {
        "AssignedFlow":CallFlowDynamicGreeting,
        "QueueName":QueueNames,
        "QueueARN":ARN,
        "Status":Status,
        "DisplayQueueName": DisplayQueueName
    }
    print(return_data)
    return return_data
    
def format_phone_num(phone_number):
    return "(" + phone_number[2:5] + ") " + phone_number[5:8] + "-" + phone_number[8:]
    
def get_ARN(queue_name):
    # if queue was not found
    if queue_name == "None":
        return "None"
    
    # else search DynamoDB for ARN corresponding to Queue Name
    dynamodb = boto3.resource('dynamodb')
    table = dynamodb.Table('QueueByARN')
    response = table.query(
        KeyConditionExpression=Key('Queue Name').eq(queue_name)
    )
    
    if response['Count'] >= 1:
        if 'ARN' in response['Items'][0]:
            ARN = response['Items'][0]['ARN']
        else:
            ARN = "None"
    else:
        ARN = "None"
        
    return ARN