resource "aws_connect_quick_connect" "_322_hoag_memorial" {
	instance_id  = var.connect_instance_id
	name         = "322 Hoag Memorial"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+19497646797"
        }
	}
	tags = var.tags
}
