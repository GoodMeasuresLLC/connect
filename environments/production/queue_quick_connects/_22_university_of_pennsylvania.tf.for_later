resource "aws_connect_quick_connect" "_22_university_of_pennsylvania" {
	instance_id  = var.connect_instance_id
	name         = "22 University of Pennsylvania"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+12675937790"
        }
	}
	tags = var.tags
}
