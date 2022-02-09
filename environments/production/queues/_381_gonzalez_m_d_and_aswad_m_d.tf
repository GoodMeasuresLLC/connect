resource "aws_connect_queue" "_381_gonzalez_m_d_and_aswad_m_d" {
  description  = "AHEAD-Gonzalez M D and Aswad M D"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "381 Gonzalez M D and Aswad M D"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="54be0aae-1127-40c5-a769-1284b972427f"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
