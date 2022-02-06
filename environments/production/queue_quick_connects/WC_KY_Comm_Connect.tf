resource "aws_connect_quick_connect" "WC_KY_Comm_Connect" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "WC KY Comm Connect"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18667752192"
        }
	}
	tags = local.tags
}
