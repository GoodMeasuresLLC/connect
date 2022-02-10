resource "aws_connect_quick_connect" "_370_advanced_memory_research" {
	instance_id  = var.connect_instance_id
	name         = "370 Advanced Memory Research"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+17323419500"
        }
	}
	tags = var.tags
}
