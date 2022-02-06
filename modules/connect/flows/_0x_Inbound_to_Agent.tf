resource "aws_connect_contact_flow" "_0x_Inbound_to_Agent" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "0x Inbound to Agent"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "_0x_Inbound_to_Agent.json"
  content_hash = filebase64sha256("_0x_Inbound_to_Agent.json")
  tags = local.tags
}
