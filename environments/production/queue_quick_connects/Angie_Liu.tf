resource "aws_connect_quick_connect" "Angie_Liu" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Angie Liu"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "0e8fc249-f810-4b13-a8d2-afafa0f102b1"
        }
	}
	tags = local.tags
}
