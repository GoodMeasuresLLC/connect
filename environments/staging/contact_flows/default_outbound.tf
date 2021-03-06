resource "aws_connect_contact_flow" "default_outbound" {
  instance_id  = var.connect_instance_id
  name         = "Default outbound"
  type         = "OUTBOUND_WHISPER"
  description  = "Default flow for outbound calls."
  filename     = "${path.module}/default_outbound.json"
  content_hash = filebase64sha256("${path.module}/default_outbound.json")
  tags = var.tags
}
