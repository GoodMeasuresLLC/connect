resource "aws_connect_quick_connect" "Language_Line_Primary" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Language Line (Primary)"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18558185011"
        }
	}
	tags = local.tags
}
