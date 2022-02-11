resource "aws_connect_queue" "b_m_c_healthnet" {
  description  = "BMC-HealthNet"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "B M C HealthNet"
  outbound_caller_config {
    outbound_caller_id_name="GM-BMC-HealthNet"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}