resource "aws_connect_quick_connect" "Karen_Shidler" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Karen Shidler"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "ad9a093c-537d-4eea-8fcf-6d6fb0961c44"
        }
	}
	tags = local.tags
}
