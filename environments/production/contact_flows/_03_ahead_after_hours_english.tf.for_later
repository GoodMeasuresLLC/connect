resource "aws_connect_contact_flow" "_03_ahead_after_hours_english" {
  instance_id  = var.connect_instance_id
  name         = "03 AHEAD After Hours - English"
  type         = "CONTACT_FLOW"
  description  = "Off Hours AHEAD Prompt"
  filename     = "${path.module}/_03_ahead_after_hours_english.json"
  content_hash = filebase64sha256("${path.module}/_03_ahead_after_hours_english.json")
  tags = var.tags
}
