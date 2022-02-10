resource "aws_connect_quick_connect" "wc_nj_medicaid_member_svc" {
	instance_id  = var.connect_instance_id
	name         = "WC NJ Medicaid Member Svc"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18884532534"
        }
	}
	tags = var.tags
}
