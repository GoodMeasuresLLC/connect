resource "aws_connect_queue" "_13_mount_sinai_school_of_medicine" {
  description  = "AHEAD-Mount Sinai School of Medicine"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "13 Mount Sinai School of Medicine"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="75c74e9d-990a-4833-91b2-185ca3e83dca"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
