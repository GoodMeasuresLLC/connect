resource "aws_connect_quick_connect" "Madeline_Young" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Madeline Young"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "0b514f30-7f50-40fb-8ca8-d86da40e39d7"
        }
	}
	tags = local.tags
}
