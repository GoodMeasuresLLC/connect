resource "aws_connect_queue" "presbyterian_centennial_local" {
  description  = "Presbyterian Centennial Local"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Presbyterian Centennial Local"
  outbound_caller_config {
    outbound_caller_id_name="GM-Presbyterian"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
