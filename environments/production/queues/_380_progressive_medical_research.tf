resource "aws_connect_queue" "_380_progressive_medical_research" {
  description  = "AHEAD-Progressive Medical Research"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "380 Progressive Medical Research"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="f1cc20bf-b45b-4dac-a998-77e1660dbf02"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
