resource "aws_connect_queue" "ahead_canada" {
  description  = "AHEAD Canada Locations"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "AHEAD-Canada"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="7070efbd-4c02-4ddc-b0aa-d5d57eba2410"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }            tags = var.tags
          }
