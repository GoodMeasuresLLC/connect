resource "aws_connect_queue" "_6_university_of_michigan" {
  description  = "AHEAD-University of Michigan"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "6 University of Michigan"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
