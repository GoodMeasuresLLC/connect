resource "aws_connect_queue" "_323_donald_s_marks" {
  description  = "AHEAD-Donald S Marks"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "323 Donald S Marks"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
