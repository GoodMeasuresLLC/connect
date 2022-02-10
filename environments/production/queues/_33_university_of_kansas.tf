resource "aws_connect_queue" "_33_university_of_kansas" {
  description  = "AHEAD-University of Kansas"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "33 University of Kansas"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="b262e543-8a7e-4af0-a85e-3fbbd7dbde77"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
