resource "aws_connect_queue" "_32_emory_university" {
  description  = "AHEAD-Emory University"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "32 Emory University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="d0da6d47-ef52-4dbc-9078-4dd6ae74d9e5"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
