resource "aws_connect_contact_flow" "_03_AHEAD_Voicemail_Flow_English" {
  instance_id  = var.connect_instance_id
  name         = "03 AHEAD Voicemail Flow English"
  type         = "CONTACT_FLOW"
  description  = "Logic for when customer has elected to leave a voicemail"
  filename     = "_03_AHEAD_Voicemail_Flow_English.json"
  content_hash = filebase64sha256("_03_AHEAD_Voicemail_Flow_English.json")
  tags = var.tags
}
