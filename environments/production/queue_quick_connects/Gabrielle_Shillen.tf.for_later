resource "aws_connect_quick_connect" "gabrielle_shillen" {
	instance_id  = var.connect_instance_id
	name         = "Gabrielle Shillen"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.contact_flows_map["default_agent_transfer"]}"
            user_id = "ecaf1656-1c51-41fc-bb69-16e6153bf5b6"
        }
	}
	tags = var.tags
}
