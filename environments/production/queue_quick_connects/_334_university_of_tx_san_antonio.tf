resource "aws_connect_quick_connect" "_334_university_of_tx_san_antonio" {
	instance_id  = var.connect_instance_id
	name         = "334 University of TX San Antonio"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+12104508426"
        }
	}
	tags = var.tags
}
