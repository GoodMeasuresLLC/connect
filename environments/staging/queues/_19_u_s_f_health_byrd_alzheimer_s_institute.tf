resource "aws_connect_queue" "_19_u_s_f_health_byrd_alzheimer_s_institute" {
  description  = "AHEAD-U S F Health Byrd Alzheimer’s Institute"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "19 U S F Health Byrd Alzheimer’s Institute"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["sample_lambda_integration"]
  }
  tags = var.tags
}
