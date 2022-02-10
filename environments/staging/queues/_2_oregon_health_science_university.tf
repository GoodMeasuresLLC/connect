resource "aws_connect_queue" "_2_oregon_health_science_university" {
  description  = "AHEAD-Oregon Health & Science University"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "2 Oregon Health & Science University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["sample_lambda_integration"]
  }
  tags = var.tags
}
