resource "aws_connect_queue" "_41_yale_university" {
  description  = "AHEAD-Yale University School of Medicine"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "41 Yale University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="491b38f2-180f-4636-b20c-9162fd7af771"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }            tags = var.tags
          }
