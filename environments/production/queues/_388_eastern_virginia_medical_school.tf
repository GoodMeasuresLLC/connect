resource "aws_connect_queue" "_388_eastern_virginia_medical_school" {
  description  = "AHEAD-Eastern Virginia Medical School"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "388 Eastern Virginia Medical School"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="1caf9f37-ac08-44c8-86f4-32c10591f2b4"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
