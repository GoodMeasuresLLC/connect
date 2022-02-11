resource "aws_connect_queue" "_27_university_of_rochester_medical_center" {
  description  = "AHEAD-University of Rochester Medical Center"
  hours_of_operation_id = var.hours_of_operations_map["basic_hours"]
  instance_id  = var.connect_instance_id
  name         = "27 University of Rochester Medical Center"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}