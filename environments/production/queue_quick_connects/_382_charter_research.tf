resource "aws_connect_quick_connect" "_382_charter_research" {
	instance_id  = var.connect_instance_id
	name         = "382 Charter Research"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+14073371000"
        }
	}
	tags = var.tags
}
