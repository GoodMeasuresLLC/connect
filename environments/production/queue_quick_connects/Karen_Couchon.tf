resource "aws_connect_quick_connect" "Karen_Couchon" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Karen Couchon"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "a5ad6ec4-2e56-4553-88f4-4170c67cc8b3"
        }
	}
	tags = local.tags
}
