resource "aws_connect_quick_connect" "_18_john_hopkins_university" {
	instance_id  = var.connect_instance_id
	name         = "18 John Hopkins University"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+14105509020"
        }
	}
	tags = var.tags
}
