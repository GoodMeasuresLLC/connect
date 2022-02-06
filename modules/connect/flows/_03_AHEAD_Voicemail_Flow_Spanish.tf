resource "aws_connect_contact_flow" "_03_AHEAD_Voicemail_Flow_Spanish" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "03 AHEAD Voicemail Flow Spanish"
  type         = "CONTACT_FLOW"
  description  = "Logic for when customer has elected to leave a voicemail"
  filename     = "_03_AHEAD_Voicemail_Flow_Spanish.json"
  content_hash = filebase64sha256("_03_AHEAD_Voicemail_Flow_Spanish.json")
  tags = local.tags
}
