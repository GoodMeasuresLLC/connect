resource "aws_connect_queue" "ahead_distance_ineligible" {
  description  = "AHEAD-Distance Ineligible"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "AHEAD-Distance Ineligible"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="18005758-a70a-436d-9e72-3dbef17e7afd"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
