resource "aws_connect_queue" "_382_charter_research" {
  description  = "AHEAD-Charter Research"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "382 Charter Research"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
