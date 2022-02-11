resource "aws_connect_quick_connect" "stephanie_samaniego" {
	instance_id  = var.connect_instance_id
	name         = "Stephanie Samaniego"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${var.contact_flows_map["default_queue_transfer"]}"
            user_id = "b4538a62-f4d7-434f-a349-1175fdd404da"
        }
	}
	tags = var.tags
}
