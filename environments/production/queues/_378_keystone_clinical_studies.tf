resource "aws_connect_queue" "_378_keystone_clinical_studies" {
  description  = "AHEAD-Keystone Clinical Studies"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "378 Keystone Clinical Studies"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="3756dc16-c30f-4b0e-8d10-bccaf4483010"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
