resource "aws_connect_quick_connect" "Cheri_Backman" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Cheri Backman"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "86d979ba-9dd2-4fb2-b87f-53f5b348fa87"
        }
	}
	tags = local.tags
}
