resource "aws_connect_queue" "_389_ralph_h_johnson_med_center" {
  description  = "AHEAD-Ralph H. Johnson VA Medical Center"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "389 Ralph H. Johnson Med Center"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
