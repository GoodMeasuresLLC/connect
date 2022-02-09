resource "aws_connect_queue" "_177_houston_methodist_neurological_institute" {
  description  = "AHEAD-Houston Methodist Neurological Institute"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "177 Houston Methodist Neurological Institute"
  outbound_caller_config {
    outbound_flow_id=var.flows_map["default_customer_hold"]
  }            tags = var.tags
          }
