resource "aws_connect_queue" "_16_wien_center_for_clinical_research" {
  description  = "AHEAD-Wien Center for Clinical Research (Spanish)"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "16 Wien Center for Clinical Research"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["default_customer_hold"]
  }
  tags = var.tags
}
