resource "aws_connect_queue" "good_measures_patient_line" {
  description  = "Good Measures Patient Line"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Good Measures Patient Line"
  outbound_caller_config {
    outbound_caller_id_name="Good Measures"
    outbound_caller_id_number_id="f7dbbc35-2e83-4e84-80c5-8ad910c06c2d"
    outbound_flow_id=var.contact_flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
