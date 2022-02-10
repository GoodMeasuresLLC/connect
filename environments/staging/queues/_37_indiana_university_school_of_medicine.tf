resource "aws_connect_queue" "_37_indiana_university_school_of_medicine" {
  description  = "AHEAD-Indiana University School of Medicine"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "37 Indiana University School of Medicine"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
