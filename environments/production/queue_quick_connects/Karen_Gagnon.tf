resource "aws_connect_quick_connect" "Karen_Gagnon" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Karen Gagnon"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "8b0b1c61-e327-4489-bec2-4136b326a603"
        }
	}
	tags = local.tags
}
