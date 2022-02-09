resource "aws_connect_queue" "_126_parkwood_institute" {
  description  = "AHEAD-Parkwood Institute"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "126 Parkwood Institute"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="7070efbd-4c02-4ddc-b0aa-d5d57eba2410"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
