resource "aws_connect_contact_flow" "_03_ahead_voicemail_flow_english" {
  instance_id  = var.connect_instance_id
  name         = "03 AHEAD Voicemail Flow English"
  type         = "CONTACT_FLOW"
  description  = "Logic for when customer has elected to leave a voicemail"
  filename     = "${path.module}/_03_ahead_voicemail_flow_english.json"
  content_hash = filebase64sha256("${path.module}/_03_ahead_voicemail_flow_english.json")
  tags = var.tags
}
