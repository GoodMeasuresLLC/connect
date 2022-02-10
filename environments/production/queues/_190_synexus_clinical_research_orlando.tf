resource "aws_connect_queue" "_190_synexus_clinical_research_orlando" {
  description  = "AHEAD-Orlando Synexus Clinical Research"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "190 Synexus Clinical Research Orlando"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="c104c99a-7f3e-44ef-94bd-ce2a2659c7f3"
  }
  tags = var.tags
}
