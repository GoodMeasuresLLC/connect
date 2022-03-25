resource "aws_connect_quick_connect" "WC_NC_Member_Services" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "WC NC Member Services"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+15667995318"
        }
	}
	tags = local.tags
}
