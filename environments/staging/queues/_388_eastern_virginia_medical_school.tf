resource "aws_connect_queue" "_388_eastern_virginia_medical_school" {
  description  = "AHEAD-Eastern Virginia Medical School"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "388 Eastern Virginia Medical School"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}