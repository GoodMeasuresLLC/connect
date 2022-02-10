resource "aws_connect_queue" "dhmc_bariatric" {
  description  = "DHMC-Bariatric"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "DHMC-Bariatric"
  outbound_caller_config {
    outbound_caller_id_name="GM-DHMC-Bariatric"
    outbound_caller_id_number_id="52aa06fb-c472-42d2-8265-05a5c1810aa1"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
