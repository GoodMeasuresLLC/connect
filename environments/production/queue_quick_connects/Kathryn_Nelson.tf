resource "aws_connect_quick_connect" "Kathryn_Nelson" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Kathryn Nelson"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "8770b6f8-da9b-4407-b8ad-e3fabaa406e8"
        }
	}
	tags = local.tags
}
