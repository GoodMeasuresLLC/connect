resource "aws_connect_quick_connect" "_6_university_of_michigan" {
	instance_id  = var.connect_instance_id
	name         = "6 University of Michigan"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+17342322415"
        }
	}
	tags = var.tags
}
