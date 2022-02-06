resource "aws_connect_contact_flow" "_0x_Voicemail_Flow" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "0x Voicemail Flow"
  type         = "CONTACT_FLOW"
  description  = "Logic for when customer has elected to leave a voicemail"
  filename     = "_0x_Voicemail_Flow.json"
  content_hash = filebase64sha256("_0x_Voicemail_Flow.json")
  tags = local.tags
}
