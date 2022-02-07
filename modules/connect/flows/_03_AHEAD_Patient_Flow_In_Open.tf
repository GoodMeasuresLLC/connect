resource "aws_connect_contact_flow" "_03_ahead_patient_flow_in_open" {
  instance_id  = var.connect_instance_id
  name         = "03 AHEAD Patient Flow - In (Open)"
  type         = "CONTACT_FLOW"
  description  = "Ahead Study"
  filename     = "_03_ahead_patient_flow_in_open.json"
  content_hash = filebase64sha256("_03_ahead_patient_flow_in_open.json")
  tags = var.tags
}
