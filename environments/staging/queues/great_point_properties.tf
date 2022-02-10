resource "aws_connect_queue" "great_point_properties" {
  description  = "Great Point Properties"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Great Point Properties"
  outbound_caller_config {
    outbound_caller_id_name="GM-Great Point Properties"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
