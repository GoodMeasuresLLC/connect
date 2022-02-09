resource "aws_connect_queue" "_141_rhode_island_hospital" {
  description  = "AHEAD-Rhode Island Hospital"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "141 Rhode Island Hospital"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["default_customer_hold"]
  }
  tags = var.tags
}
