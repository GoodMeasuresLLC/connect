resource "aws_connect_quick_connect" "_155_duke_health_center" {
	instance_id  = var.connect_instance_id
	name         = "155 Duke Health Center"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+19196682879"
        }
	}
	tags = var.tags
}
