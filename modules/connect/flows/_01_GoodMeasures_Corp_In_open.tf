resource "aws_connect_contact_flow" "_01_GoodMeasures_Corp_In_open" {
  instance_id  = var.connect_instance_id
  name         = "01 GoodMeasures Corp - In (open)"
  type         = "CONTACT_FLOW"
   filename     = "_01_GoodMeasures_Corp_In_open.json"
  content_hash = filebase64sha256("_01_GoodMeasures_Corp_In_open.json")
  tags = var.tags
}
