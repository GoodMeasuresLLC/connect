resource "aws_connect_contact_flow" "_0x_dial_extension" {
  instance_id  = "${var.connect_instance_id}"
  name         = "0x Dial Extension"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "_0x_dial_extension.json"
  content_hash = filebase64sha256("_0x_dial_extension.json")
  tags = var.tags
}
