resource "aws_connect_quick_connect" "WC_NC_Medicaid_Member_Svc" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "WC NC Medicaid Member Svc"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18667995318"
        }
	}
	tags = local.tags
}
