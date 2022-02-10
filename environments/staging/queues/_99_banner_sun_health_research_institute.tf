resource "aws_connect_queue" "_99_banner_sun_health_research_institute" {
  description  = "AHEAD-Banner Sun Health Research Institute"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "99 Banner Sun Health Research Institute"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["sample_lambda_integration"]
  }
  tags = var.tags
}
