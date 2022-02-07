resource "aws_connect_contact_flow" "_0x_voicemail_flow" {
  instance_id  = var.connect_instance_id
  name         = "0x Voicemail Flow"
  type         = "CONTACT_FLOW"
  description  = "Logic for when customer has elected to leave a voicemail"
  filename     = "_0x_voicemail_flow.json"
  content_hash = filebase64sha256("_0x_voicemail_flow.json")
  tags = var.tags
}
