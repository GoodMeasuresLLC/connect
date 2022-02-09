resource "aws_connect_queue" "_319_renstar_medical_research" {
  description  = "AHEAD-Renstar Medical Research"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "319 Renstar Medical Research"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="2bf4a79b-68dc-4acb-b6eb-df6e0c9016b2"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
