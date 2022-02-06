resource "aws_connect_quick_connect" "Heather_Leonard" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Heather Leonard"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "05ac7d22-84cd-4cc9-9352-876a7b44d5c0"
        }
	}
	tags = local.tags
}
