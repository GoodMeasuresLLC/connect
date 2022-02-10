resource "aws_connect_queue" "_305_vanderbilt_university" {
  description  = "AHEAD-Vanderbilt University Medical Center"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "305 Vanderbilt University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["sample_lambda_integration"]
  }
  tags = var.tags
}
