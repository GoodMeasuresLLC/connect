resource "aws_connect_queue" "_98_stanford_university" {
  description  = "AHEAD-Stanford University"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "98 Stanford University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="6b4e32d7-ab3a-4199-882c-94d301c219bc"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
