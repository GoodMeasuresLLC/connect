resource "aws_connect_queue" "_7_mayo_clinic_rochester" {
  description  = "AHEAD-Mayo Clinic Rochester"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "7 Mayo Clinic Rochester"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="aac671d5-336f-44b8-808e-4e3f6d863e70"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
