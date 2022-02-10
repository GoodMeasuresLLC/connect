resource "aws_connect_quick_connect" "_332_university_of_washington" {
	instance_id  = var.connect_instance_id
	name         = "332 University of Washington"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+12067440446"
        }
	}
	tags = var.tags
}
