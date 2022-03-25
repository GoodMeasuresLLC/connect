resource "aws_connect_quick_connect" "_13_mount_sinai" {
	instance_id  = var.connect_instance_id
	name         = "13 Mount Sinai"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+12125854616"
        }
	}
	tags = var.tags
}
