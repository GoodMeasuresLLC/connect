resource "aws_connect_queue" "_126_parkwood_institute" {
  description  = "AHEAD-Parkwood Institute"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "126 Parkwood Institute"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
