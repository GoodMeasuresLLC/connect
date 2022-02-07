resource "aws_connect_queue" "_129_banner_alzheimer_s_institute" {
  description  = "AHEAD-Banner Alzheimer's Institute"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "129 Banner Alzheimer's Institute"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="57573f07-5cc3-45ad-8697-edabdd281e9d"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }            tags = var.tags
          }
