resource "aws_connect_quick_connect" "Michelle_Ring" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Michelle Ring"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "94ed2d75-74da-42e2-8c67-b6d33724ddba"
        }
	}
	tags = local.tags
}
