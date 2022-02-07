resource "aws_connect_contact_flow" "_02_gm_vvip_in_open_closed" {
  instance_id  = "${var.connect_instance_id}"
  name         = "02 GM VVIP - In (open+closed)"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "_02_gm_vvip_in_open_closed.json"
  content_hash = filebase64sha256("_02_gm_vvip_in_open_closed.json")
  tags = var.tags
}
