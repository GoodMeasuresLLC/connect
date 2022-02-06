
resource "aws_connect_hours_of_operation" "Onduo_OTM" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "Onduo - OTM"
  description  = ""
  time_zone     = ""
  tags = local.tags
}
