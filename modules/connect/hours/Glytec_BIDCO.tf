
resource "aws_connect_hours_of_operation" "Glytec_BIDCO" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "Glytec - BIDCO"
  description  = ""
  time_zone     = ""
  tags = local.tags
}
