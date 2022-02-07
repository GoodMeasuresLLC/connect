resource "aws_connect_contact_flow" "_03_ahead_voicemail_flow_spanish" {
  instance_id  = "${var.connect_instance_id}"
  name         = "03 AHEAD Voicemail Flow Spanish"
  type         = "CONTACT_FLOW"
  description  = "Logic for when customer has elected to leave a voicemail"
  filename     = "_03_ahead_voicemail_flow_spanish.json"
  content_hash = filebase64sha256("_03_ahead_voicemail_flow_spanish.json")
  tags = var.tags
}
