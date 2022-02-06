resource "aws_connect_contact_flow" "_0x_Inbound_to_Agent" {
  instance_id  = var.connect_instance_id
  name         = "0x Inbound to Agent"
  type         = "CONTACT_FLOW"
   filename     = "_0x_Inbound_to_Agent.json"
  content_hash = filebase64sha256("_0x_Inbound_to_Agent.json")
  tags = var.tags
}
