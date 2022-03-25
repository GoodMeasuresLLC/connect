resource "aws_connect_queue" "_10_columbia_university" {
  description  = "AHEAD-Columbia University (Spanish)"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "10 Columbia University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="55aaf4db-2c41-4e56-802e-573f4e61894a"
  }
  tags = var.tags
}
