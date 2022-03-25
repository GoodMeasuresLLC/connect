resource "aws_connect_queue" "_3_university_of_southern_california" {
  description  = "AHEAD-University of Southern California"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "3 University of Southern California"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="7e769b74-c31e-4d77-8695-2eb8a2f749a9"
  }
  tags = var.tags
}
