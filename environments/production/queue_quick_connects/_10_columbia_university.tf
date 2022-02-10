resource "aws_connect_quick_connect" "_10_columbia_university" {
	instance_id  = var.connect_instance_id
	name         = "10 Columbia University"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+12123057661"
        }
	}
	tags = var.tags
}
