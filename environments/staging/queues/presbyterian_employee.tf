resource "aws_connect_queue" "presbyterian_employee" {
  description  = "Presbyterian Employee HW"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Presbyterian Employee"
  outbound_caller_config {
    outbound_caller_id_name="GM-Presbyterian Employee"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
