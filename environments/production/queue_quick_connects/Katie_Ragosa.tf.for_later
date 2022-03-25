resource "aws_connect_quick_connect" "Katie_Ragosa" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Katie Ragosa"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020350"
        }
	}
	tags = local.tags
}
