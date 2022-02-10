resource "aws_connect_quick_connect" "katie_mathlin" {
	instance_id  = var.connect_instance_id
	name         = "Katie Mathlin"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.flows_map["default_agent_transfer"]}"
            user_id = "76b09f85-ab63-4e9c-8ff4-d1aef95cd7a1"
        }
	}
	tags = var.tags
}
