resource "aws_connect_contact_flow" "Default_customer_hold" {
  instance_id  = var.connect_instance_id
  name         = "Default customer hold"
  type         = "CUSTOMER_HOLD"
  description  = "Default audio the customer hears while on hold."
  filename     = "Default_customer_hold.json"
  content_hash = filebase64sha256("Default_customer_hold.json")
  tags = var.tags
}
