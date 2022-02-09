resource "aws_connect_queue" "_316_summit_research_network_oregon" {
  description  = "AHEAD-Summit Research Network, Oregon"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "316 Summit Research Network, Oregon"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["default_customer_hold"]
  }
  tags = var.tags
}
