resource "aws_connect_contact_flow" "Default_agent_whisper" {
  instance_id  = var.connect_instance_id
  name         = "Default agent whisper"
  type         = "AGENT_WHISPER"
  description  = "Default whisper played to the agent."
  filename     = "Default_agent_whisper.json"
  content_hash = filebase64sha256("Default_agent_whisper.json")
  tags = var.tags
}
