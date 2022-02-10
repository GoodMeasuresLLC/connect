resource "aws_connect_queue" "_36_mayo_clinic_jacksonville" {
  description  = "AHEAD-Mayo Clinic Jacksonville"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "36 Mayo Clinic Jacksonville"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="5ac6e2f9-65e8-4eca-bbe9-30b3e93bea63"
  }
  tags = var.tags
}
