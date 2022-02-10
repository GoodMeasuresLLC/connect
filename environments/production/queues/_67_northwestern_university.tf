resource "aws_connect_queue" "_67_northwestern_university" {
  description  = "AHEAD-Northwestern University"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "67 Northwestern University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="1e63e26d-66a6-4913-bfec-f7b71844802c"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
