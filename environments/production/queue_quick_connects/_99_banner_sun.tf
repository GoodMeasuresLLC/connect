resource "aws_connect_quick_connect" "_99_banner_sun" {
	instance_id  = var.connect_instance_id
	name         = "99 Banner Sun"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+16238326573"
        }
	}
	tags = var.tags
}
