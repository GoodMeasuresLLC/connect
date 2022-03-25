resource "aws_connect_quick_connect" "_24_university_of_pittsburgh" {
	instance_id  = var.connect_instance_id
	name         = "24 University of Pittsburgh"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+14126922700"
        }
	}
	tags = var.tags
}
