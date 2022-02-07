resource "aws_connect_contact_flow" "_01_goodmeasures_corp_in_closed" {
  instance_id  = var.connect_instance_id
  name         = "01 GoodMeasures Corp - In (closed)"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "_01_goodmeasures_corp_in_closed.json"
  content_hash = filebase64sha256("_01_goodmeasures_corp_in_closed.json")
  tags = var.tags
}
