resource "aws_connect_contact_flow" "holiday_routing_test" {
  instance_id  = var.connect_instance_id
  name         = "Holiday Routing Test"
  type         = "CONTACT_FLOW"
  description  = "DO NOT CHANGE - All flows route to their intended destination"
  filename     = "${path.module}/holiday_routing_test.json"
  content_hash = filebase64sha256("${path.module}/holiday_routing_test.json")
  tags = var.tags
}
