resource "aws_connect_quick_connect" "K_layn_Brown" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "K'layn Brown"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "6454e65d-a9b6-42e7-991f-e5d560dd915a"
        }
	}
	tags = local.tags
}
