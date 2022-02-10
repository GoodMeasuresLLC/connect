resource "aws_connect_queue" "_383_advanced_clinical_research_network" {
  description  = "AHEAD-Advanced Clinical Research Network"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "383 Advanced Clinical Research Network"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["sample_lambda_integration"]
  }
  tags = var.tags
}
