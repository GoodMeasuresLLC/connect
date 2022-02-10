resource "aws_connect_quick_connect" "_23_university_of_ky_sanders_brown" {
	instance_id  = var.connect_instance_id
	name         = "23 University of KY Sanders-Brown"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18592184980"
        }
	}
	tags = var.tags
}
