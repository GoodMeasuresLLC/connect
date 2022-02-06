resource "aws_connect_quick_connect" "WC_NJ_Medicare_Member_Svc" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "WC NJ Medicare Member Svc"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18334449088"
        }
	}
	tags = local.tags
}
