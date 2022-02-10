resource "aws_connect_queue" "ahead_age_ineligible" {
  description  = "AHEAD-Age Ineligible"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "AHEAD-Age Ineligible"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
