resource "aws_connect_quick_connect" "Gateway_Health_Medicare_Support" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Gateway Health Medicare Support"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18006855209"
        }
	}
	tags = local.tags
}
