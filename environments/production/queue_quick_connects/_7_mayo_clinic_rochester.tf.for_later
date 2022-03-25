resource "aws_connect_quick_connect" "_7_mayo_clinic_rochester" {
	instance_id  = var.connect_instance_id
	name         = "7 Mayo Clinic Rochester"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+15072841324"
        }
	}
	tags = var.tags
}
