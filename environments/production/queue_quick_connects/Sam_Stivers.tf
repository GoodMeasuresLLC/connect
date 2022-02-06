resource "aws_connect_quick_connect" "Sam_Stivers" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Sam Stivers"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020328"
        }
	}
	tags = local.tags
}
