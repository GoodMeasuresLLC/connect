resource "aws_connect_queue" "gm_corporate" {
  description  = "GM Corporate"
  hours_of_operation_id = var.hours_of_operations_map["good_measures_corporate"]
  instance_id  = var.connect_instance_id
  name         = "GM Corporate"
  outbound_caller_config {
    outbound_caller_id_name="GM-Corporate"
    outbound_caller_id_number_id="c295c126-6731-4c39-9382-2e8daa8cc221"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }            tags = var.tags
          }
