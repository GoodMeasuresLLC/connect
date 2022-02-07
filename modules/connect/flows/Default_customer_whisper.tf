resource "aws_connect_contact_flow" "default_customer_whisper" {
  instance_id  = var.connect_instance_id
  name         = "Default customer whisper"
  type         = "CUSTOMER_WHISPER"
  description  = "Default whisper played to the customer"
  filename     = "default_customer_whisper.json"
  content_hash = filebase64sha256("default_customer_whisper.json")
  tags = var.tags
}
