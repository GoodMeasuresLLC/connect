resource "aws_connect_quick_connect" "tufts_health_plan_member_svc" {
	instance_id  = var.connect_instance_id
	name         = "Tufts Health Plan Member Svc"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+16179729400"
        }
	}
	tags = var.tags
}
