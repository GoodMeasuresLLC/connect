resource "aws_connect_quick_connect" "Ashley_Lahr" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Ashley Lahr"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "6d7295ae-19e3-4c55-991e-00cb034efd79"
        }
	}
	tags = local.tags
}
