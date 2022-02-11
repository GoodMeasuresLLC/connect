resource "aws_connect_queue" "gm_test" {
  description  = "GM Test"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "GM Test"
  outbound_caller_config {
    outbound_caller_id_name="GM Test"
    outbound_caller_id_number_id="048d3bf4-c512-418b-86b2-dbbf13b677cc"
    outbound_flow_id=var.contact_flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
