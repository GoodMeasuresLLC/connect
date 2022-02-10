resource "aws_connect_quick_connect" "_356_amc_research" {
	instance_id  = var.connect_instance_id
	name         = "356 AMC Research"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+17043644000"
        }
	}
	tags = var.tags
}
