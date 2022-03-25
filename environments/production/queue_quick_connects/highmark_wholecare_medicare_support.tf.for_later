resource "aws_connect_quick_connect" "highmark_wholecare_medicare_support" {
	instance_id  = var.connect_instance_id
	name         = "Highmark Wholecare Medicare Support"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18006855209"
        }
	}
	tags = var.tags
}
