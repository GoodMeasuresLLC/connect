resource "aws_connect_queue" "z_default_error_queue" {
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Z - Default (Error) Queue"
  outbound_caller_config {
    outbound_caller_id_name="Good Measures"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
