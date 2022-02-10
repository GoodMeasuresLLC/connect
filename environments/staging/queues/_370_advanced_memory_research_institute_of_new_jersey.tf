resource "aws_connect_queue" "_370_advanced_memory_research_institute_of_new_jersey" {
  description  = "AHEAD-Advanced Memory Research Institute of New Jersey"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "370 Advanced Memory Research Institute of New Jersey"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD"
    outbound_flow_id=var.flows_map["sample_lambda_integration"]
  }
  tags = var.tags
}
