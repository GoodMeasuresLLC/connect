resource "aws_connect_contact_flow" "_02_gm_vvip_in_open_closed" {
  instance_id  = var.connect_instance_id
  name         = "02 GM VVIP - In (open+closed)"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "${path.module}/_02_gm_vvip_in_open_closed.json"
  content_hash = filebase64sha256("${path.module}/_02_gm_vvip_in_open_closed.json")
  tags = var.tags
}
