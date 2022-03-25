resource "aws_connect_quick_connect" "Patti_McKenzie" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Patti McKenzie"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "57212c5a-73ff-418a-ab44-21d0cfc5a765"
        }
	}
	tags = local.tags
}
