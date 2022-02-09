resource "aws_connect_queue" "on_duo_walgreens" {
  description  = "Onduo Walgreens"
  hours_of_operation_id = var.hours_of_operations_map["onduo_walgreens"]
  instance_id  = var.connect_instance_id
  name         = "On Duo Walgreens"
  outbound_caller_config {
    outbound_caller_id_name="GM-Onduo Walgreens"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
