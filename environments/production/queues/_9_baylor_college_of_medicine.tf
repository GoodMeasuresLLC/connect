resource "aws_connect_queue" "_9_baylor_college_of_medicine" {
  description  = "AHEAD-Baylor College of Medicine"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "9 Baylor College of Medicine"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="4b2e04dd-2a07-47e7-a348-d2d6056a250b"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
