resource "aws_connect_queue" "_324_sharp_neurocognitive_research_center" {
  description  = "AHEAD-Sharp Neurocognitive Research Center"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "324 Sharp Neurocognitive Research Center"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
