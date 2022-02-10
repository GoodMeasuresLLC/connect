resource "aws_connect_queue" "_114_case_western_reserve_university" {
  description  = "AHEAD-Case Western Reserve University"
  hours_of_operation_id = var.hours_of_operations_map["basic_hours"]
  instance_id  = var.connect_instance_id
  name         = "114 Case Western Reserve University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="2d0cf70b-df5b-4c18-a220-741630dcfda1"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
