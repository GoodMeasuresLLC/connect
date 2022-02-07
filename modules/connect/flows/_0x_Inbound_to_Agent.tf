resource "aws_connect_contact_flow" "_0x_inbound_to_agent" {
  instance_id  = "${var.connect_instance_id}"
  name         = "0x Inbound to Agent"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "_0x_inbound_to_agent.json"
  content_hash = filebase64sha256("_0x_inbound_to_agent.json")
  tags = var.tags
}
