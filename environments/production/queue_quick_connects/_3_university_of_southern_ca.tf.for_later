resource "aws_connect_quick_connect" "_3_university_of_southern_ca" {
	instance_id  = var.connect_instance_id
	name         = "3 University of Southern CA"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+13234427600"
        }
	}
	tags = var.tags
}
