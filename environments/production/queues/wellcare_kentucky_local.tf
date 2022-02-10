resource "aws_connect_queue" "wellcare_kentucky_local" {
  description  = "Wellcare Kentucky Local"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Wellcare Kentucky Local"
  outbound_caller_config {
    outbound_caller_id_number_id="dce5f5d8-c74f-4e24-bfac-a866722ae486"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
