resource "aws_connect_quick_connect" "Jill_Goodspeed" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Jill Goodspeed"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577030325"
        }
	}
	tags = local.tags
}
