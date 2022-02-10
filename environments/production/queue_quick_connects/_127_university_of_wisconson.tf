resource "aws_connect_quick_connect" "_127_university_of_wisconson" {
	instance_id  = var.connect_instance_id
	name         = "127 University of Wisconson"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+16082634646"
        }
	}
	tags = var.tags
}
