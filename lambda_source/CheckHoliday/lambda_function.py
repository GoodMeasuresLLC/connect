import boto3
from datetime import datetime
import dateutil.tz

def lambda_handler(event, context):

    ######################################
    #Call Center Emergency Shutdown Logic
    #Update the following line to True to emergency close the call center.  Update it to False for normal operations.
    EmergencyStatus = False
    #Update the above line to emergency close the call center
    ######################################
    #Call Center Closed Holiday Logic
    
    pst = dateutil.tz.gettz('US/Pacific')
    todaydate = str(datetime.now(tz=pst)).split()[0]
    
    #####Enter Holidays in YYYY-MM-DD format, separated by commas, wrapped in SINGLE quotes
    good_measures_holidays = ['2019-11-28', '2019-12-25', '2020-01-01']
    biotel_care_holidays = ['2019-09-02', '2019-11-28', '2019-12-25', '2020-01-01']
    glytec_holidays = ['2019-09-02', '2019-11-28', '2019-12-25', '2020-01-01']
    onduo_otm_holidays = ['2019-09-02', '2019-11-28', '2019-12-25', '2020-01-01']
    onduo_walgreens_holidays = ['2019-11-28', '2019-12-25', '2020-01-01']
    good_measures_corp_holidays = ['2019-11-28', '2019-12-25', '2020-01-01']
    #####Enter Holidays in YYYY-MM-DD format, separated by commas, wrapped in SINGLE quotes
    
    flow = event["Details"]["ContactData"]["Attributes"]["AssignedFlow"]
    if flow == "GM-Main":
        holidayarray = good_measures_holidays
    elif flow == "GM-Glytec":
        holidayarray = glytec_holidays
    elif flow == "GM-Onduo":
        holidayarray = onduo_otm_holidays
    elif flow == "GM-BioTel":
        holidayarray = biotel_care_holidays
    else:
        holidayarray = []
    
    try:
        b=holidayarray.index(str(datetime.today()).split()[0])
    except ValueError:
        HolidayStatus = "False"
    else:
        HolidayStatus = "True"
    #Must return EmergencyStatus, HolidayStatus, TargetQueue
    resultMap = {
        "EmergencyStatus":EmergencyStatus,
        "HolidayStatus":HolidayStatus
    }
    #Send Data back to Connect
    return resultMap
