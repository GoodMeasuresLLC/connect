resource "aws_connect_quick_connect" "ashley_lahr" {
	instance_id  = var.connect_instance_id
	name         = "Ashley Lahr"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.contact_flows_map["default_agent_transfer"]}"
            user_id = "6d7295ae-19e3-4c55-991e-00cb034efd79"
        }
	}
	tags = var.tags
}
