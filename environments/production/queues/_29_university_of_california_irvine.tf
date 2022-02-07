resource "aws_connect_queue" "_29_university_of_california_irvine" {
  description  = "AHEAD-University of California Irvine"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "29 University of California Irvine"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="12c365ba-581a-4a96-be51-9eb06a2b82f9"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }            tags = var.tags
          }
