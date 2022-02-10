resource "aws_connect_quick_connect" "angie_liu" {
	instance_id  = var.connect_instance_id
	name         = "Angie Liu"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.flows_map["default_agent_transfer"]}"
            user_id = "0e8fc249-f810-4b13-a8d2-afafa0f102b1"
        }
	}
	tags = var.tags
}
