resource "aws_connect_quick_connect" "_37_indiana_university" {
	instance_id  = var.connect_instance_id
	name         = "37 Indiana University"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+13179634823"
        }
	}
	tags = var.tags
}
