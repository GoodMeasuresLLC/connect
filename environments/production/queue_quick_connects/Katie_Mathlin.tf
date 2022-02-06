resource "aws_connect_quick_connect" "Katie_Mathlin" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Katie Mathlin"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "76b09f85-ab63-4e9c-8ff4-d1aef95cd7a1"
        }
	}
	tags = local.tags
}
