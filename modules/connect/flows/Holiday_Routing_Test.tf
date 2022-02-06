resource "aws_connect_contact_flow" "Holiday_Routing_Test" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "Holiday Routing Test"
  type         = "CONTACT_FLOW"
  description  = "DO NOT CHANGE - All flows route to their intended destination"
  filename     = "Holiday_Routing_Test.json"
  content_hash = filebase64sha256("Holiday_Routing_Test.json")
  tags = local.tags
}
