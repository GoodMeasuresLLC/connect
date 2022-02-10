resource "aws_connect_queue" "_309_alzheimer_s_research_and_treatment_center" {
  description  = "AHEAD-Alzheimer's Research and Treatment Center"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "309 Alzheimer's Research and Treatment Center"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
