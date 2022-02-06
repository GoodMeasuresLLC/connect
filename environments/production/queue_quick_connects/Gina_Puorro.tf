resource "aws_connect_quick_connect" "Gina_Puorro" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Gina Puorro"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "9c52516c-2023-427b-be1f-c1c726de27e2"
        }
	}
	tags = local.tags
}
