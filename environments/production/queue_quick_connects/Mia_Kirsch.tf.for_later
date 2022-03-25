resource "aws_connect_quick_connect" "Mia_Kirsch" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Mia Kirsch"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "3c81c50b-dd4c-495d-8834-94c8a1505643"
        }
	}
	tags = local.tags
}
