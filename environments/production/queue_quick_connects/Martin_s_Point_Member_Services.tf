resource "aws_connect_quick_connect" "martin_s_point_member_services" {
	instance_id  = var.connect_instance_id
	name         = "Martin's Point Member Services"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18665447504"
        }
	}
	tags = var.tags
}
