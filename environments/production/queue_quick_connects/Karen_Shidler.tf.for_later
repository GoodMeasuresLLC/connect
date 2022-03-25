resource "aws_connect_quick_connect" "karen_shidler" {
	instance_id  = var.connect_instance_id
	name         = "Karen Shidler"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.contact_flows_map["default_agent_transfer"]}"
            user_id = "ad9a093c-537d-4eea-8fcf-6d6fb0961c44"
        }
	}
	tags = var.tags
}
