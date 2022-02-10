resource "aws_connect_quick_connect" "_303_brain_matters" {
	instance_id  = var.connect_instance_id
	name         = "303 Brain Matters"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+15613748461"
        }
	}
	tags = var.tags
}
