resource "aws_connect_queue" "_18_johns_hopkins_university" {
  description  = "AHEAD-Johns Hopkins University"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "18 Johns Hopkins University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
