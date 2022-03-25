resource "aws_connect_quick_connect" "Stefany_Shaheen" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Stefany Shaheen"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020325"
        }
	}
	tags = local.tags
}
