resource "aws_connect_quick_connect" "Boston_Sm_Conf" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Boston Sm Conf"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020332"
        }
	}
	tags = local.tags
}
