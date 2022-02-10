resource "aws_connect_queue" "_33_university_of_kansas" {
  description  = "AHEAD-University of Kansas"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "33 University of Kansas"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
