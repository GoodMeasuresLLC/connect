resource "aws_connect_queue" "_14_rush_university_medical_center" {
  description  = "AHEAD-Rush University Medical Center"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "14 Rush University Medical Center"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="d66b79b4-4d17-47ca-950b-1298cca3111f"
  }
  tags = var.tags
}
