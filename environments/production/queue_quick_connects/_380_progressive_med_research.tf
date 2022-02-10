resource "aws_connect_quick_connect" "_380_progressive_med_research" {
	instance_id  = var.connect_instance_id
	name         = "380 Progressive Med Research"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+13863047070"
        }
	}
	tags = var.tags
}
