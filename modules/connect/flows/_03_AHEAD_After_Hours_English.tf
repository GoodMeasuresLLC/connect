resource "aws_connect_contact_flow" "_03_AHEAD_After_Hours_English" {
  instance_id  = var.connect_instance_id
  name         = "03 AHEAD After Hours - English"
  type         = "CONTACT_FLOW"
  description  = "Off Hours AHEAD Prompt"
  filename     = "_03_AHEAD_After_Hours_English.json"
  content_hash = filebase64sha256("_03_AHEAD_After_Hours_English.json")
  tags = var.tags
}
