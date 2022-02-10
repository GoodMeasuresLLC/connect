resource "aws_connect_queue" "berry_global" {
  description  = "Berry Global"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Berry Global"
  outbound_caller_config {
    outbound_caller_id_name="Good Measures"
    outbound_flow_id=var.flows_map["default_outbound"]
  }
  tags = var.tags
}
