resource "aws_connect_queue" "_16_wien_center_for_clinical_research" {
  description  = "AHEAD-Wien Center for Clinical Research (Spanish)"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "16 Wien Center for Clinical Research"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="2008f736-2942-4510-b8b2-50778f13d1dd"
  }
  tags = var.tags
}
