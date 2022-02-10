resource "aws_connect_queue" "ahead_incomplete_entry" {
  description  = "AHEAD-Incomplete Entry"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "AHEAD-Incomplete Entry"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
