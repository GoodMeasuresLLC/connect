resource "aws_connect_quick_connect" "April_Jackson" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "April Jackson"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "9330f3ff-4185-4683-950c-0837915aa4a8"
        }
	}
	tags = local.tags
}
