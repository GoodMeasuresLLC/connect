resource "aws_connect_queue" "_158_central_states_research" {
  description  = "AHEAD-Central States Research"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "158 Central States Research"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}