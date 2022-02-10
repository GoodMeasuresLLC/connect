resource "aws_connect_queue" "_349_cleveland_clinic_lou_ruvo_center" {
  description  = "AHEAD-Cleveland Clinic Lou Ruvo Center for Brain Health"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "349 Cleveland Clinic Lou Ruvo Center"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="2ebf6f3f-95eb-4ad6-b970-1e67cf7efe19"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
