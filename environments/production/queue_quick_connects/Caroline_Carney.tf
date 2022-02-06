resource "aws_connect_quick_connect" "Caroline_Carney" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Caroline Carney"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020339"
        }
	}
	tags = local.tags
}
