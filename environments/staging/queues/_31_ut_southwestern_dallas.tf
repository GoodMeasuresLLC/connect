resource "aws_connect_queue" "_31_ut_southwestern_dallas" {
  description  = "AHEAD-UT Southwestern Dallas"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "31 UT Southwestern Dallas"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}