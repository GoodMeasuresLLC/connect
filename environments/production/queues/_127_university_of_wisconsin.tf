resource "aws_connect_queue" "_127_university_of_wisconsin" {
  description  = "AHEAD-University of Wisconsin"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "127 University of Wisconsin"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="c077ef05-79e2-49a2-844c-0875f22443a6"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
