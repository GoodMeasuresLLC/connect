resource "aws_connect_queue" "ahead_distance_ineligible" {
  description  = "AHEAD-Distance Ineligible"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "AHEAD-Distance Ineligible"
  outbound_caller_config {
    outbound_flow_id=var.flows_map["default_customer_hold"]
  }            tags = var.tags
          }
