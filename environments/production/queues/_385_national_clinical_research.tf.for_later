resource "aws_connect_queue" "_385_national_clinical_research" {
  description  = "AHEAD-National Clinical Research"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "385 National Clinical Research"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="f74d6870-ebe1-4589-86ca-31486b5d48d9"
  }
  tags = var.tags
}
