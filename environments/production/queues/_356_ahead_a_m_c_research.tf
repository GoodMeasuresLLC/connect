resource "aws_connect_queue" "_356_ahead_a_m_c_research" {
  description  = "AHEAD-A M C Research"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "356 AHEAD A M C Research"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="a2548080-8ae7-4085-b8c3-9d99aa3e3daf"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
