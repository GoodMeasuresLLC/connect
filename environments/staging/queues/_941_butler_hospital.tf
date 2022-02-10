resource "aws_connect_queue" "_941_butler_hospital" {
  description  = "AHEAD-Butler Hospital"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "941 Butler Hospital"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
