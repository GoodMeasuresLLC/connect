resource "aws_connect_quick_connect" "cheri_backman" {
	instance_id  = var.connect_instance_id
	name         = "Cheri Backman"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.contact_flows_map["default_agent_transfer"]}"
            user_id = "86d979ba-9dd2-4fb2-b87f-53f5b348fa87"
        }
	}
	tags = var.tags
}
