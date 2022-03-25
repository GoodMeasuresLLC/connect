resource "aws_connect_quick_connect" "Sara_Bias" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Sara Bias"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "e6a81735-8486-4666-9d3d-590fd2b3ca7e"
        }
	}
	tags = local.tags
}
