resource "aws_connect_contact_flow" "holiday_test_flow" {
  instance_id  = "${var.connect_instance_id}"
  name         = "Holiday Test Flow"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "holiday_test_flow.json"
  content_hash = filebase64sha256("holiday_test_flow.json")
  tags = var.tags
}
