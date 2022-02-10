resource "aws_connect_quick_connect" "_381_gonzalez_md" {
	instance_id  = var.connect_instance_id
	name         = "381 Gonzalez MD"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+13057020024"
        }
	}
	tags = var.tags
}
