resource "aws_connect_queue" "_11_washington_university_st_louis" {
  description  = "AHEAD-Washington University, St. Louis"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "11 Washington University St. Louis"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="ea99d1dd-1fd4-4d4e-a490-d1685ee7f34a"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
