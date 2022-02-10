resource "aws_connect_quick_connect" "_383_advanced_clinical" {
	instance_id  = var.connect_instance_id
	name         = "383 Advanced Clinical"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+13057021594"
        }
	}
	tags = var.tags
}
