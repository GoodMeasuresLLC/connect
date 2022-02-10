resource "aws_connect_queue" "_23_university_of_kentucky_sanders_brown" {
  description  = "AHEAD-University of Kentucky Sanders-Brown"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "23 University of Kentucky Sanders Brown"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["sample_lambda_integration"]
  }
  tags = var.tags
}
