resource "aws_connect_quick_connect" "Eliza_Christian" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Eliza Christian"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "f9527645-e939-42f1-8c4b-f1d3fa735dea"
        }
	}
	tags = local.tags
}
