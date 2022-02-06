resource "aws_connect_quick_connect" "Shireen_Munir" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Shireen Munir"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "fe251e98-a990-4ab3-beb0-928c93501278"
        }
	}
	tags = local.tags
}
