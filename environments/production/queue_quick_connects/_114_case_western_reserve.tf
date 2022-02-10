resource "aws_connect_quick_connect" "_114_case_western_reserve" {
	instance_id  = var.connect_instance_id
	name         = "114 Case Western Reserve"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+12164646467"
        }
	}
	tags = var.tags
}
