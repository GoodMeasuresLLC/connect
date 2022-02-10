resource "aws_connect_quick_connect" "_109_howard_university" {
	instance_id  = var.connect_instance_id
	name         = "109 Howard University"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+12028651973"
        }
	}
	tags = var.tags
}
