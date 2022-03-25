resource "aws_connect_queue" "healthy_harrison" {
  description  = "Healthy Harrison"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Healthy Harrison"
  outbound_caller_config {
    outbound_caller_id_name="GM-Healthy Harrison"
    outbound_caller_id_number_id="5f86c9a0-ce59-40ac-8cc4-e53dfd493e1f"
    outbound_flow_id=var.contact_flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
