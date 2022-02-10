resource "aws_connect_quick_connect" "_94_brigham_womens" {
	instance_id  = var.connect_instance_id
	name         = "94 Brigham & Womens"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+16177327992"
        }
	}
	tags = var.tags
}
