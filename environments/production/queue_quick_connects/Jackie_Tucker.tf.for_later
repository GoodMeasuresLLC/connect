resource "aws_connect_quick_connect" "Jackie_Tucker" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Jackie Tucker"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "1446f117-a062-4589-ab61-aad9507754e2"
        }
	}
	tags = local.tags
}
