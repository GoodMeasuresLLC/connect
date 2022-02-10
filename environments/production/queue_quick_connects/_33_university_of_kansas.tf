resource "aws_connect_quick_connect" "_33_university_of_kansas" {
	instance_id  = var.connect_instance_id
	name         = "33 University of Kansas"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+19135880555"
        }
	}
	tags = var.tags
}
