resource "aws_connect_queue" "_158_central_states_research" {
  description  = "AHEAD-Central States Research"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "158 Central States Research"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="5944304d-ccd8-4382-9076-2f1453b07d3a"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
