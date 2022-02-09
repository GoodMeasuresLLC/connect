resource "aws_connect_queue" "wellcare_north_carolina_local" {
  description  = "Wellcare North Carolina Local"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Wellcare North Carolina Local"
  outbound_caller_config {
    outbound_caller_id_name="Good Measures"
    outbound_caller_id_number_id="1f16dddf-1041-4759-af5e-4aabcdf4191f"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
