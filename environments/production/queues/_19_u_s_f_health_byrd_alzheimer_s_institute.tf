resource "aws_connect_queue" "_19_u_s_f_health_byrd_alzheimer_s_institute" {
  description  = "AHEAD-U S F Health Byrd Alzheimer’s Institute"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "19 U S F Health Byrd Alzheimer’s Institute"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="64b8dd1a-87f3-4dea-bb38-165f36d278c2"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }            tags = var.tags
          }
