resource "aws_connect_queue" "_382_charter_research" {
  description  = "AHEAD-Charter Research"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "382 Charter Research"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="9ddb6c22-f4cd-4bc4-a05d-520a4641435c"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
