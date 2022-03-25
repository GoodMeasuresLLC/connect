resource "aws_connect_quick_connect" "BioTel_Care_Cust_Srv" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "BioTel Care Cust Srv"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18777774710"
        }
	}
	tags = local.tags
}
