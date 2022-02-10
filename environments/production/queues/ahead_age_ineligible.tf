resource "aws_connect_queue" "ahead_age_ineligible" {
  description  = "AHEAD-Age Ineligible"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "AHEAD-Age Ineligible"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="dad3b175-43b4-40fb-bb22-a2162bbdf760"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
