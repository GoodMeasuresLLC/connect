resource "aws_connect_queue" "c_v_s_minuteclinic" {
  description  = "CVS-MinuteClinic"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "C V S MinuteClinic"
  outbound_caller_config {
    outbound_caller_id_name="GM-CVS-MinuteClinic"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
