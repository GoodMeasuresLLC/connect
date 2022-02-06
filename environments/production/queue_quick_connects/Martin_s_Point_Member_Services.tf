resource "aws_connect_quick_connect" "Martin_s_Point_Member_Services" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Martin's Point Member Services"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18665447504"
        }
	}
	tags = local.tags
}
