resource "aws_connect_queue" "_381_gonzalez_m_d_and_aswad_m_d" {
  description  = "AHEAD-Gonzalez M D and Aswad M D"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "381 Gonzalez M D and Aswad M D"
  outbound_caller_config {
    outbound_flow_id=var.flows_map["default_customer_hold"]
  }            tags = var.tags
          }
