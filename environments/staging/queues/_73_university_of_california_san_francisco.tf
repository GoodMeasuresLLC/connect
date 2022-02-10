resource "aws_connect_queue" "_73_university_of_california_san_francisco" {
  description  = "AHEAD-San Francisco University of California"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "73 University of California San Francisco"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
