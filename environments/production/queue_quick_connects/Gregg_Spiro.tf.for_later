resource "aws_connect_quick_connect" "gregg_spiro" {
	instance_id  = var.connect_instance_id
	name         = "Gregg Spiro"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020334"
        }
	}
	tags = var.tags
}
