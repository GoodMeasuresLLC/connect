resource "aws_connect_quick_connect" "_388_eastern_virginia_med" {
	instance_id  = var.connect_instance_id
	name         = "388 Eastern Virginia Med"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+17574467406"
        }
	}
	tags = var.tags
}
