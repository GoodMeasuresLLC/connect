resource "aws_connect_contact_flow" "_0x_GM_Outbound" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "0x GM Outbound"
  type         = "OUTBOUND_WHISPER"
  description  = "Outbound Flow"
  filename     = "_0x_GM_Outbound.json"
  content_hash = filebase64sha256("_0x_GM_Outbound.json")
  tags = local.tags
}
