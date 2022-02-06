resource "aws_connect_contact_flow" "Holiday_Test_Flow" {
  instance_id  = var.connect_instance_id
  name         = "Holiday Test Flow"
  type         = "CONTACT_FLOW"
   filename     = "Holiday_Test_Flow.json"
  content_hash = filebase64sha256("Holiday_Test_Flow.json")
  tags = var.tags
}
