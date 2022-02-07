resource "aws_connect_contact_flow" "_0x_gm_outbound" {
  instance_id  = var.connect_instance_id
  name         = "0x GM Outbound"
  type         = "OUTBOUND_WHISPER"
  description  = "Outbound Flow"
  filename     = "_0x_gm_outbound.json"
  content_hash = filebase64sha256("_0x_gm_outbound.json")
  tags = var.tags
}
