resource "aws_connect_quick_connect" "Kenzie_Weber" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Kenzie Weber"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "f4117494-a2c4-4504-a5ed-dcaab2d9b5e6"
        }
	}
	tags = local.tags
}
