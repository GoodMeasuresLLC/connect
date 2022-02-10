resource "aws_connect_quick_connect" "_307_columbus_memory_center" {
	instance_id  = var.connect_instance_id
	name         = "307 Columbus Memory Center"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+17063274000"
        }
	}
	tags = var.tags
}
