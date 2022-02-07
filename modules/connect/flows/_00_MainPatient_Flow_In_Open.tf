resource "aws_connect_contact_flow" "_00_mainpatient_flow_in_open" {
  instance_id  = var.connect_instance_id
  name         = "00 MainPatient Flow - In (Open)"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "_00_mainpatient_flow_in_open.json"
  content_hash = filebase64sha256("_00_mainpatient_flow_in_open.json")
  tags = var.tags
}
