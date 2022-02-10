resource "aws_connect_quick_connect" "_336_abington" {
	instance_id  = var.connect_instance_id
	name         = "336 Abington"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+12159579250"
        }
	}
	tags = var.tags
}
