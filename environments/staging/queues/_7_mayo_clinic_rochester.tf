resource "aws_connect_queue" "_7_mayo_clinic_rochester" {
  description  = "AHEAD-Mayo Clinic Rochester"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "7 Mayo Clinic Rochester"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}