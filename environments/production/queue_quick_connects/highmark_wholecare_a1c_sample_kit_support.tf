resource "aws_connect_quick_connect" "highmark_wholecare_a1c_sample_kit_support" {
	instance_id  = var.connect_instance_id
	name         = "Highmark Wholecare - A1c Sample Kit Support"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18008716080"
        }
	}
	tags = var.tags
}
