resource "aws_connect_contact_flow" "_0x_Dial_Extension" {
  instance_id  = var.connect_instance_id
  name         = "0x Dial Extension"
  type         = "CONTACT_FLOW"
   filename     = "_0x_Dial_Extension.json"
  content_hash = filebase64sha256("_0x_Dial_Extension.json")
  tags = var.tags
}
