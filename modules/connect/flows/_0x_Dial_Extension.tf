resource "aws_connect_contact_flow" "_0x_Dial_Extension" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "0x Dial Extension"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "_0x_Dial_Extension.json"
  content_hash = filebase64sha256("_0x_Dial_Extension.json")
  tags = local.tags
}
