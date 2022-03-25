resource "aws_connect_quick_connect" "wc_ky_comm_connect" {
	instance_id  = var.connect_instance_id
	name         = "WC KY Comm Connect"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18667752192"
        }
	}
	tags = var.tags
}
