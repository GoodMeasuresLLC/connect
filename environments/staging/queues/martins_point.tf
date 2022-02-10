resource "aws_connect_queue" "martins_point" {
  description  = "Martins Point"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Martins Point"
  outbound_caller_config {
    outbound_caller_id_name="GM-Martins Point"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
