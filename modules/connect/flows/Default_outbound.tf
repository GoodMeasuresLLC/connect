resource "aws_connect_contact_flow" "Default_outbound" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "Default outbound"
  type         = "OUTBOUND_WHISPER"
  description  = "Default flow for outbound calls."
  filename     = "Default_outbound.json"
  content_hash = filebase64sha256("Default_outbound.json")
  tags = local.tags
}
