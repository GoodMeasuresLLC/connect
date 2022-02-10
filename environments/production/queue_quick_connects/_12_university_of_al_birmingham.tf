resource "aws_connect_quick_connect" "_12_university_of_al_birmingham" {
	instance_id  = var.connect_instance_id
	name         = "12 University of AL Birmingham"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+12059346223"
        }
	}
	tags = var.tags
}
