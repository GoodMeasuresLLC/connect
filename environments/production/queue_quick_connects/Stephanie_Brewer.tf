resource "aws_connect_quick_connect" "Stephanie_Brewer" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Stephanie Brewer"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "150680fa-3f30-4126-9984-c8995f154e9b"
        }
	}
	tags = local.tags
}
