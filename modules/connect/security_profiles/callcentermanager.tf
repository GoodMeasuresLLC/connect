resource "aws_connect_security_profile" "callcentermanager" {
  instance_id  = "${var.connect_instance_id}"
  name         = "CallCenterManager"
  description  = "A call center manager (or call center admin) manages the day-to-day aspects of the call center."
  tags = var.tags
  permissions = [
        "AccessMetrics",
        "AgentGrouping.View",
        "AgentStates.View",
        "AgentTimeCard.View",
        "ContactAttributes.View",
        "ContactFlows.View",
        "ContactSearch.View",
        "DeleteCallRecordings",
        "DownloadCallRecordings",
        "HoursOfOperation.Create",
        "HoursOfOperation.Edit",
        "HoursOfOperation.View",
        "ListenCallRecordings",
        "ManagerListenIn",
        "MetricsReports.Create",
        "MetricsReports.Delete",
        "MetricsReports.Edit",
        "MetricsReports.Publish",
        "MetricsReports.Schedule",
        "MetricsReports.View",
        "PhoneNumbers.Claim",
        "PhoneNumbers.Edit",
        "PhoneNumbers.View",
        "Prompts.View",
        "Queues.Edit",
        "Queues.View",
        "ReportSchedules.Create",
        "ReportSchedules.Delete",
        "ReportSchedules.Edit",
        "ReportSchedules.View",
        "RoutingPolicies.View",
        "SecurityProfiles.View",
        "TransferDestinations.View",
        "Users.Create",
        "Users.Edit",
        "Users.EnableAndDisable",
        "Users.View"
    ]
}
