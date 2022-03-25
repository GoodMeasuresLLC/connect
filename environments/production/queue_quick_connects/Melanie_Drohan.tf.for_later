resource "aws_connect_quick_connect" "Melanie_Drohan" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Melanie Drohan"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "9af0673d-7d7c-42d8-a842-ec1b4e4929da"
        }
	}
	tags = local.tags
}
