resource "aws_connect_quick_connect" "_31_ut_southwestern_dallas" {
	instance_id  = var.connect_instance_id
	name         = "31 UT Southwestern Dallas"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+12146489118"
        }
	}
	tags = var.tags
}