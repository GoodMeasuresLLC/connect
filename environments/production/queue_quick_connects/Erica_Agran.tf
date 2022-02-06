resource "aws_connect_quick_connect" "Erica_Agran" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Erica Agran"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18575749292"
        }
	}
	tags = local.tags
}
