resource "aws_connect_queue" "_191_synexus_clinical_research_the_villages" {
  description  = "AHEAD-The Villages Synexus Clinical Research"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "191 Synexus Clinical Research The Villages"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["sample_lambda_integration"]
  }
  tags = var.tags
}
