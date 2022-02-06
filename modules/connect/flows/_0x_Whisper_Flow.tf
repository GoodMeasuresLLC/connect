resource "aws_connect_contact_flow" "_0x_Whisper_Flow" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "0x Whisper Flow"
  type         = "AGENT_WHISPER"
  description  = ""
  filename     = "_0x_Whisper_Flow.json"
  content_hash = filebase64sha256("_0x_Whisper_Flow.json")
  tags = local.tags
}
