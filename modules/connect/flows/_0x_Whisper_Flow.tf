resource "aws_connect_contact_flow" "_0x_whisper_flow" {
  instance_id  = "${var.connect_instance_id}"
  name         = "0x Whisper Flow"
  type         = "AGENT_WHISPER"
  description  = ""
  filename     = "_0x_whisper_flow.json"
  content_hash = filebase64sha256("_0x_whisper_flow.json")
  tags = var.tags
}
