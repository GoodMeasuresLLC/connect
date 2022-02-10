resource "aws_connect_queue" "_334_university_of_texas" {
  description  = "AHEAD-University of Texas Health Science Center of San Antonio (Spanish)"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "334 University of Texas"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="8881e57d-75c8-43d8-ba51-341c4ddd2182"
  }
  tags = var.tags
}
