resource "aws_connect_quick_connect" "cassandra_johnson_connect" {
	instance_id  = var.connect_instance_id
	name         = "Cassandra Johnson-Connect"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.contact_flows_map["default_agent_transfer"]}"
            user_id = "25f1422a-63a3-49e6-ac8f-c0cdccee8e81"
        }
	}
	tags = var.tags
}
