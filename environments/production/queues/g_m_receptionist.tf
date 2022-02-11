resource "aws_connect_queue" "g_m_receptionist" {
  description  = "GM Corporate Receptionist Queue"
  hours_of_operation_id = var.hours_of_operations_map["good_measures_corporate"]
  instance_id  = var.connect_instance_id
  name         = "G M Receptionist"
  outbound_caller_config {
    outbound_caller_id_name="Good Measures"
    outbound_caller_id_number_id="c295c126-6731-4c39-9382-2e8daa8cc221"
    outbound_flow_id=var.contact_flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
