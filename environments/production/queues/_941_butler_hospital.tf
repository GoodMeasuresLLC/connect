resource "aws_connect_queue" "_941_butler_hospital" {
  description  = "AHEAD-Butler Hospital"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "941 Butler Hospital"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="93fee474-3d26-4a27-b3d3-999a0259ee8f"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
