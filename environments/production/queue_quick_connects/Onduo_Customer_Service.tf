resource "aws_connect_quick_connect" "Onduo_Customer_Service" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Onduo Customer Service"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18334466386"
        }
	}
	tags = local.tags
}
