resource "aws_connect_contact_flow" "Holiday_Test_Flow" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "Holiday Test Flow"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "Holiday_Test_Flow.json"
  content_hash = filebase64sha256("Holiday_Test_Flow.json")
  tags = local.tags
}
