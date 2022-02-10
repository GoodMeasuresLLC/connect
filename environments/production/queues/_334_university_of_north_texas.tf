resource "aws_connect_queue" "_334_university_of_north_texas" {
  description  = "AHEAD-University of North Texas Health Sciences Center"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "334 University of North Texas"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="74e40ca8-0a8e-4671-8197-6bff162d9025"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
