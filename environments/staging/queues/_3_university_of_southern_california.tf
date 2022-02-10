resource "aws_connect_queue" "_3_university_of_southern_california" {
  description  = "AHEAD-University of Southern California"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "3 University of Southern California"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
