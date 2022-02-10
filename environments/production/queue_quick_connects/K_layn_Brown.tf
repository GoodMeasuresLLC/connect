resource "aws_connect_quick_connect" "k_layn_brown" {
	instance_id  = var.connect_instance_id
	name         = "K'layn Brown"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.flows_map["default_agent_transfer"]}"
            user_id = "6454e65d-a9b6-42e7-991f-e5d560dd915a"
        }
	}
	tags = var.tags
}
