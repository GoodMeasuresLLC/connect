resource "aws_connect_contact_flow" "Default_agent_hold" {
  instance_id  = var.connect_instance_id
  name         = "Default agent hold"
  type         = "AGENT_HOLD"
  description  = "Audio played for the agent when on hold"
  filename     = "Default_agent_hold.json"
  content_hash = filebase64sha256("Default_agent_hold.json")
  tags = var.tags
}
