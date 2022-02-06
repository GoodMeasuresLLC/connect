resource "aws_connect_quick_connect" "Gateway_Health_Microalbumin_Sample_Kit_Support" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Gateway Health - Microalbumin Sample Kit Support"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18002663433"
        }
	}
	tags = local.tags
}
