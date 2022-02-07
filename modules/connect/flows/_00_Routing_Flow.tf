resource "aws_connect_contact_flow" "_00_routing_flow" {
  instance_id  = "${var.connect_instance_id}"
  name         = "!00 Routing Flow"
  type         = "CONTACT_FLOW"
  description  = "DO NOT CHANGE - All flows route to their intended destination"
  filename     = "_00_routing_flow.json"
  content_hash = filebase64sha256("_00_routing_flow.json")
  tags = var.tags
}
