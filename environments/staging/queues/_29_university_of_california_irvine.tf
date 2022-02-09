resource "aws_connect_queue" "_29_university_of_california_irvine" {
  description  = "AHEAD-University of California Irvine"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "29 University of California Irvine"
  outbound_caller_config {
    outbound_flow_id=var.flows_map["default_customer_hold"]
  }            tags = var.tags
          }
