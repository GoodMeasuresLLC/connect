resource "aws_connect_quick_connect" "_11_washington_university_st_louis" {
	instance_id  = var.connect_instance_id
	name         = "11 Washington University St. Louis"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+13142862363"
        }
	}
	tags = var.tags
}
