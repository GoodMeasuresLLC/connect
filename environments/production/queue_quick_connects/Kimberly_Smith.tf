resource "aws_connect_quick_connect" "Kimberly_Smith" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Kimberly Smith"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "b686151c-91a9-4a3f-9030-6deabcf91021"
        }
	}
	tags = local.tags
}
