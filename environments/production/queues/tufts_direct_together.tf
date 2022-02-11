resource "aws_connect_queue" "tufts_direct_together" {
  description  = "Tufts Direct-Together"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Tufts Direct-Together"
  outbound_caller_config {
    outbound_caller_id_name="GM-Tufts Direct"
    outbound_caller_id_number_id="0c97f814-be22-4d53-84a3-3bdf7b59efb9"
    outbound_flow_id=var.contact_flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
