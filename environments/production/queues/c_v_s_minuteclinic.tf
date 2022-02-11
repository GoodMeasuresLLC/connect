resource "aws_connect_queue" "c_v_s_minuteclinic" {
  description  = "CVS-MinuteClinic"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "C V S MinuteClinic"
  outbound_caller_config {
    outbound_caller_id_name="GM-CVS-MinuteClinic"
    outbound_caller_id_number_id="38c6e707-a64f-4f67-a2c3-706a8960fb28"
    outbound_flow_id=var.contact_flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
