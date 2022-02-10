resource "aws_connect_queue" "_130_ohio_state_university" {
  description  = "AHEAD-Ohio State University"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "130 Ohio State University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
