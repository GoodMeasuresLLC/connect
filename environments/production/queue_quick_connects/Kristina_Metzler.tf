resource "aws_connect_quick_connect" "kristina_metzler" {
	instance_id  = var.connect_instance_id
	name         = "Kristina Metzler"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.flows_map["default_agent_transfer"]}"
            user_id = "8453811f-0d77-4831-bbec-3fc1d6ddc3cc"
        }
	}
	tags = var.tags
}
