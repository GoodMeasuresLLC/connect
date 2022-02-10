resource "aws_connect_queue" "_155_duke_health_center" {
  description  = "AHEAD-Duke Health Center"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "155 Duke Health Center"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
