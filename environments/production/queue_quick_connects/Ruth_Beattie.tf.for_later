resource "aws_connect_quick_connect" "Ruth_Beattie" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Ruth Beattie"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020335"
        }
	}
	tags = local.tags
}
