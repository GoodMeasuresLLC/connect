resource "aws_connect_queue" "wellcare_north_carolina_toll_free" {
  description  = "Wellcare North Carolina Toll Free"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Wellcare North Carolina Toll Free"
  outbound_caller_config {
    outbound_caller_id_name="Good Measures"
    outbound_caller_id_number_id="d528a7c3-566c-4598-a441-588427beb2d4"
    outbound_flow_id=var.contact_flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
