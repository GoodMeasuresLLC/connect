resource "aws_connect_quick_connect" "highmark_wholecare_microalbumin_sample_kit_support" {
	instance_id  = var.connect_instance_id
	name         = "Highmark Wholecare - Microalbumin Sample Kit Support"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18002663433"
        }
	}
	tags = var.tags
}
