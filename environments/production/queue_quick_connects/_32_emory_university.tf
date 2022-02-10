resource "aws_connect_quick_connect" "_32_emory_university" {
	instance_id  = var.connect_instance_id
	name         = "32 Emory University"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+14047126901"
        }
	}
	tags = var.tags
}
