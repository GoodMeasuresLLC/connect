resource "aws_connect_quick_connect" "Gateway_Health_A1c_Sample_Kit_Support" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Gateway Health - A1c Sample Kit Support"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18008716080"
        }
	}
	tags = local.tags
}
