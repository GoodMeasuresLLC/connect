resource "aws_connect_quick_connect" "_2_oregon_health_sciences" {
	instance_id  = var.connect_instance_id
	name         = "2 Oregon Health & Sciences"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+15034947647"
        }
	}
	tags = var.tags
}
