resource "aws_connect_contact_flow" "_01_GoodMeasures_Corp_In_closed" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "01 GoodMeasures Corp - In (closed)"
  type         = "CONTACT_FLOW"
  description  = ""
  filename     = "_01_GoodMeasures_Corp_In_closed.json"
  content_hash = filebase64sha256("_01_GoodMeasures_Corp_In_closed.json")
  tags = local.tags
}
