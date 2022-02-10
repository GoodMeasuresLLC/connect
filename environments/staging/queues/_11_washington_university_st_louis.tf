resource "aws_connect_queue" "_11_washington_university_st_louis" {
  description  = "AHEAD-Washington University, St. Louis"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "11 Washington University St. Louis"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_flow_id=var.flows_map["sample_lambda_integration"]
  }
  tags = var.tags
}
