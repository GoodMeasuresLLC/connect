resource "aws_connect_quick_connect" "Jennifer_Pynenburg" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Jennifer Pynenburg"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "5a9e7cb1-48f5-4967-82b0-f89abe085ed7"
        }
	}
	tags = local.tags
}
