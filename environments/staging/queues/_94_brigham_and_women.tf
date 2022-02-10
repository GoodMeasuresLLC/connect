resource "aws_connect_queue" "_94_brigham_and_women" {
  description  = "AHEAD-Brigham and Women Hospital Center for Alzheimer Research and Treatment"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "94 Brigham and Women"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["sample_lambda_integration"]
  }
  tags = var.tags
}
