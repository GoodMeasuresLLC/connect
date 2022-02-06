resource "aws_connect_contact_flow" "_03_AHEAD_Patient_Flow_In_Open" {
  instance_id  = var.connect_instance_id
  name         = "03 AHEAD Patient Flow - In (Open)"
  type         = "CONTACT_FLOW"
  description  = "Ahead Study"
  filename     = "_03_AHEAD_Patient_Flow_In_Open.json"
  content_hash = filebase64sha256("_03_AHEAD_Patient_Flow_In_Open.json")
  tags = var.tags
}
