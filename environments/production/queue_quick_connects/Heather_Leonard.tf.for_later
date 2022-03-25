resource "aws_connect_quick_connect" "heather_leonard" {
	instance_id  = var.connect_instance_id
	name         = "Heather Leonard"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.contact_flows_map["default_agent_transfer"]}"
            user_id = "05ac7d22-84cd-4cc9-9352-876a7b44d5c0"
        }
	}
	tags = var.tags
}
