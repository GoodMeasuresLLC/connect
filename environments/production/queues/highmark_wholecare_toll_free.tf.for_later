resource "aws_connect_queue" "highmark_wholecare_toll_free" {
  description  = "Highmark Wholecare Toll Free"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Highmark Wholecare Toll Free"
  outbound_caller_config {
    outbound_caller_id_name="Good Measures"
    outbound_caller_id_number_id="1b642c21-e8f4-4ecc-944b-621b44da5407"
    outbound_flow_id=var.contact_flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
