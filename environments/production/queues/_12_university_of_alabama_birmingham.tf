resource "aws_connect_queue" "_12_university_of_alabama_birmingham" {
  description  = "AHEAD-University of Alabama, Birmingham"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "12 University of Alabama Birmingham"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="07bc1962-b921-45a8-ad3e-fe7260683009"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
