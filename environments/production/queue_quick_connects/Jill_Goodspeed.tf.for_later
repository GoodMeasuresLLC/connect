resource "aws_connect_quick_connect" "jill_goodspeed" {
	instance_id  = var.connect_instance_id
	name         = "Jill Goodspeed"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577030325"
        }
	}
	tags = var.tags
}
