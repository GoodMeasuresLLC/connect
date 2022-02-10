resource "aws_connect_quick_connect" "_385_national_clinical_research" {
	instance_id  = var.connect_instance_id
	name         = "385 National Clinical Research"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18047552300"
        }
	}
	tags = var.tags
}
