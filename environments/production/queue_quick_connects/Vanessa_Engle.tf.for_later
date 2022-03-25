resource "aws_connect_quick_connect" "Vanessa_Engle" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Vanessa Engle"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "7455553d-9c1e-4c02-af80-9204d62f0351"
        }
	}
	tags = local.tags
}
