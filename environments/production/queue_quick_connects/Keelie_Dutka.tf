resource "aws_connect_quick_connect" "Keelie_Dutka" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Keelie Dutka"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "8233bafb-eb43-4732-95f8-731234ee82a8"
        }
	}
	tags = local.tags
}
