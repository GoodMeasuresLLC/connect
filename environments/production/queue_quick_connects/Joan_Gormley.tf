resource "aws_connect_quick_connect" "Joan_Gormley" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Joan Gormley"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020327"
        }
	}
	tags = local.tags
}
