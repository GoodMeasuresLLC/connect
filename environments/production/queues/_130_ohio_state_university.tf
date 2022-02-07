resource "aws_connect_queue" "_130_ohio_state_university" {
  description  = "AHEAD-Ohio State University"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "130 Ohio State University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="a19989ca-4190-4904-bdae-278d0f0033a9"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }            tags = var.tags
          }
