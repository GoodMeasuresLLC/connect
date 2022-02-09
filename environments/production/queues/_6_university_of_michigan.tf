resource "aws_connect_queue" "_6_university_of_michigan" {
  description  = "AHEAD-University of Michigan"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "6 University of Michigan"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="feaa84dd-058f-4df7-88b0-cc2b01c57ebd"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
