resource "aws_connect_contact_flow" "Default_agent_transfer" {
  instance_id  = var.connect_instance_id
  name         = "Default agent transfer"
  type         = "AGENT_TRANSFER"
  description  = "Default flow to transfer to an agent."
  filename     = "Default_agent_transfer.json"
  content_hash = filebase64sha256("Default_agent_transfer.json")
  tags = var.tags
}
