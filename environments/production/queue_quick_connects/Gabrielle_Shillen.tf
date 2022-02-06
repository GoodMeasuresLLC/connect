resource "aws_connect_quick_connect" "Gabrielle_Shillen" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Gabrielle Shillen"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "ecaf1656-1c51-41fc-bb69-16e6153bf5b6"
        }
	}
	tags = local.tags
}
