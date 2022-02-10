resource "aws_connect_contact_flow" "_00_mainpatient_flow_in_closed" {
  instance_id  = var.connect_instance_id
  name         = "00 MainPatient Flow - In (Closed)"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "${path.module}/_00_mainpatient_flow_in_closed.json"
  content_hash = filebase64sha256("${path.module}/_00_mainpatient_flow_in_closed.json")
  tags = var.tags
}
