resource "aws_connect_contact_flow" "Default_customer_whisper" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "Default customer whisper"
  type         = "CUSTOMER_WHISPER"
  description  = "Default whisper played to the customer"
  filename     = "Default_customer_whisper.json"
  content_hash = filebase64sha256("Default_customer_whisper.json")
  tags = local.tags
}
