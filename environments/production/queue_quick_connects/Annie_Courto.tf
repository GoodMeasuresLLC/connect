resource "aws_connect_quick_connect" "Annie_Courto" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Annie Courto"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "e8ea61d4-72af-46c2-a5b4-fdb6ca0ff863"
        }
	}
	tags = local.tags
}
