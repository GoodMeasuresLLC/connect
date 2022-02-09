resource "aws_connect_queue" "ada" {
  description  = "ADA"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "ADA"
  outbound_caller_config {
    outbound_caller_id_name="GM-ADA"
    outbound_caller_id_number_id="67c97e8d-a8e6-48cb-ae23-2556e587870d"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
