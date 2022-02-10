resource "aws_connect_quick_connect" "_100_boston_unversity" {
	instance_id  = var.connect_instance_id
	name         = "100 Boston Unversity"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+16173586425"
        }
	}
	tags = var.tags
}
