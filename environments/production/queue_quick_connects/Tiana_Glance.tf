resource "aws_connect_quick_connect" "Tiana_Glance" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Tiana Glance"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "cf8009e9-101f-405c-9f3e-3ffe19b88c65"
        }
	}
	tags = local.tags
}
