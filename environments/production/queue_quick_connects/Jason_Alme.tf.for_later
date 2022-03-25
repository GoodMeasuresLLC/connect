resource "aws_connect_quick_connect" "Jason_Alme" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Jason Alme"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18573056544"
        }
	}
	tags = local.tags
}
