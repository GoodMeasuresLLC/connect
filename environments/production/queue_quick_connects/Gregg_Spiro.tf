resource "aws_connect_quick_connect" "Gregg_Spiro" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Gregg Spiro"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020334"
        }
	}
	tags = local.tags
}
