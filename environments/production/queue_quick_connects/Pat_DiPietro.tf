resource "aws_connect_quick_connect" "Pat_DiPietro" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Pat DiPietro"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "3e0935c7-753e-4198-be6e-835565e6e9b1"
        }
	}
	tags = local.tags
}
