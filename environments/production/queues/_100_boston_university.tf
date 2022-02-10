resource "aws_connect_queue" "_100_boston_university" {
  description  = "AHEAD-Boston University"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "100 Boston University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="aec69ac4-0120-4dab-8f8b-0bbdca574b06"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
