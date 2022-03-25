resource "aws_connect_quick_connect" "Patrick_Flynn" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Patrick Flynn"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020354"
        }
	}
	tags = local.tags
}
