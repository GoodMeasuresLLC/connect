resource "aws_connect_contact_flow" "_02_GM_VVIP_In_open_closed" {
  instance_id  = var.connect_instance_id
  name         = "02 GM VVIP - In (open+closed)"
  type         = "CONTACT_FLOW"
   filename     = "_02_GM_VVIP_In_open_closed.json"
  content_hash = filebase64sha256("_02_GM_VVIP_In_open_closed.json")
  tags = var.tags
}
