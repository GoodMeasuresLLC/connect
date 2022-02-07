resource "aws_connect_queue" "_18_johns_hopkins_university" {
  description  = "AHEAD-Johns Hopkins University"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "18 Johns Hopkins University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="b6a01740-c616-4bcd-b971-e9244e8f467d"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }            tags = var.tags
          }
