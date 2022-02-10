resource "aws_connect_queue" "_98_stanford_university" {
  description  = "AHEAD-Stanford University"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "98 Stanford University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
