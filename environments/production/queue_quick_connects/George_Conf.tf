resource "aws_connect_quick_connect" "George_Conf" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "George Conf"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020331"
        }
	}
	tags = local.tags
}
