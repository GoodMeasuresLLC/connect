resource "aws_connect_contact_flow" "default_customer_hold" {
  instance_id  = var.connect_instance_id
  name         = "Default customer hold"
  type         = "CUSTOMER_HOLD"
  description  = "Default audio the customer hears while on hold."
  filename     = "${path.module}/default_customer_hold.json"
  content_hash = filebase64sha256("${path.module}/default_customer_hold.json")
  tags = var.tags
}
