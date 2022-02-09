resource "aws_connect_queue" "walmart_dpp" {
  description  = "WalMart - DPP"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "WalMart - DPP"
  outbound_caller_config {
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }            tags = var.tags
          }
