resource "aws_connect_quick_connect" "wc_nc_medicaid_member_svc" {
	instance_id  = var.connect_instance_id
	name         = "WC NC Medicaid Member Svc"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18667995318"
        }
	}
	tags = var.tags
}
