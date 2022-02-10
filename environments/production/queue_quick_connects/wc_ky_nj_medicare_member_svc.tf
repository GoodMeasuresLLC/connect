resource "aws_connect_quick_connect" "wc_ky_nj_medicare_member_svc" {
	instance_id  = var.connect_instance_id
	name         = "WC KY & NJ Medicare Member Svc"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18334449088"
        }
	}
	tags = var.tags
}
