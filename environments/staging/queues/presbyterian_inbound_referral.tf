resource "aws_connect_queue" "presbyterian_inbound_referral" {
  description  = "Presbyterian Inbound Referral"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Presbyterian Inbound Referral"
  outbound_caller_config {
    outbound_caller_id_name="Good Measures"
    outbound_caller_id_number_id="e34da52c-e08f-47ce-be18-c50999028c98"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
