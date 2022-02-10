resource "aws_connect_quick_connect" "_378_keystone_clinical" {
	instance_id  = var.connect_instance_id
	name         = "378 Keystone Clinical"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+16102778073"
        }
	}
	tags = var.tags
}
