resource "aws_connect_quick_connect" "tiana_glance" {
	instance_id  = var.connect_instance_id
	name         = "Tiana Glance"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.flows_map["default_agent_transfer"]}"
            user_id = "cf8009e9-101f-405c-9f3e-3ffe19b88c65"
        }
	}
	tags = var.tags
}
