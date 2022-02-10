resource "aws_connect_queue" "presbyterian_toll_free" {
  description  = "Presbyterian Toll Free"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Presbyterian Toll Free"
  outbound_caller_config {
    outbound_caller_id_name="GM-Presbyterian Toll Free"
    outbound_caller_id_number_id="7625ddee-7aa5-4959-bd69-99482539d04a"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
