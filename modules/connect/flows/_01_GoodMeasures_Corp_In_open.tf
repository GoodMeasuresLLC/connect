resource "aws_connect_contact_flow" "_01_goodmeasures_corp_in_open" {
  instance_id  = var.connect_instance_id
  name         = "01 GoodMeasures Corp - In (open)"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "${path.module}/_01_goodmeasures_corp_in_open.json"
  content_hash = filebase64sha256("${path.module}/_01_goodmeasures_corp_in_open.json")
  tags = var.tags
}
