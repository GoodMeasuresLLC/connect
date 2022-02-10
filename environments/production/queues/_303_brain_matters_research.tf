resource "aws_connect_queue" "_303_brain_matters_research" {
  description  = "AHEAD-Brain Matters Research"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "303 Brain Matters Research"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="c290d6da-a1e0-4151-9255-c531f653cdfc"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
