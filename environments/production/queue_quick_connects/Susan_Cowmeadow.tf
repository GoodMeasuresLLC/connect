resource "aws_connect_quick_connect" "susan_cowmeadow" {
	instance_id  = var.connect_instance_id
	name         = "Susan Cowmeadow"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.contact_flows_map["default_agent_transfer"]}"
            user_id = "2940ac4c-1fe4-42e5-a24c-e73b888ebe02"
        }
	}
	tags = var.tags
}
