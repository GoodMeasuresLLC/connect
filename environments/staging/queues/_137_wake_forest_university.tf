resource "aws_connect_queue" "_137_wake_forest_university" {
  description  = "AHEAD-Wake Forest University Health Sciences"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "137 Wake Forest University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["sample_lambda_integration"]
  }
  tags = var.tags
}
