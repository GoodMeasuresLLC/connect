resource "aws_connect_queue" "_2_oregon_health_science_university" {
  description  = "AHEAD-Oregon Health & Science University"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "2 Oregon Health & Science University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="1d3a43d8-0fdc-4538-8d22-364a365e7bca"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
