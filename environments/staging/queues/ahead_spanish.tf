resource "aws_connect_queue" "ahead_spanish" {
  description  = "AHEAD-Spanish"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "AHEAD-Spanish"
  outbound_caller_config {
    outbound_flow_id=var.flows_map["default_customer_hold"]
  }            tags = var.tags
          }
