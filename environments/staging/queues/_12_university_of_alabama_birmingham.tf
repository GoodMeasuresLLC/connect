resource "aws_connect_queue" "_12_university_of_alabama_birmingham" {
  description  = "AHEAD-University of Alabama, Birmingham"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "12 University of Alabama Birmingham"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
