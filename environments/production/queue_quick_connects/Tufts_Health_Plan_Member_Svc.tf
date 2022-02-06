resource "aws_connect_quick_connect" "Tufts_Health_Plan_Member_Svc" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Tufts Health Plan Member Svc"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+16179729400"
        }
	}
	tags = local.tags
}
