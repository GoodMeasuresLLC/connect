resource "aws_connect_quick_connect" "Monica_Salas" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Monica Salas"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "8be3243c-0d70-4bfc-8e5c-418efb1c6630"
        }
	}
	tags = local.tags
}
