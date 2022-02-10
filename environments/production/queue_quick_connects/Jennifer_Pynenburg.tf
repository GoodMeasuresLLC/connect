resource "aws_connect_quick_connect" "jennifer_pynenburg" {
	instance_id  = var.connect_instance_id
	name         = "Jennifer Pynenburg"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.flows_map["default_agent_transfer"]}"
            user_id = "5a9e7cb1-48f5-4967-82b0-f89abe085ed7"
        }
	}
	tags = var.tags
}
