resource "aws_connect_queue" "new_mexico_retiree_healthcare" {
  description  = "New Mexico Retiree Healthcare Authority"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "New Mexico Retiree Healthcare"
  outbound_caller_config {
    outbound_caller_id_name="GM-NMRHCA"
    outbound_caller_id_number_id="2654a116-2d66-44de-b717-2cda848fa199"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }            tags = var.tags
          }
