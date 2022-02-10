resource "aws_connect_quick_connect" "shireen_munir" {
	instance_id  = var.connect_instance_id
	name         = "Shireen Munir"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.flows_map["default_agent_transfer"]}"
            user_id = "fe251e98-a990-4ab3-beb0-928c93501278"
        }
	}
	tags = var.tags
}
