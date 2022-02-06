resource "aws_connect_quick_connect" "Sarah_Lambree" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Sarah Lambree"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "c983de3b-7d49-4d94-9433-0f8612586c02"
        }
	}
	tags = local.tags
}
