resource "aws_connect_quick_connect" "Kristina_Metzler" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Kristina Metzler"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "8453811f-0d77-4831-bbec-3fc1d6ddc3cc"
        }
	}
	tags = local.tags
}
