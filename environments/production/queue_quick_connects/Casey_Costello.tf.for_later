resource "aws_connect_quick_connect" "Casey_Costello" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Casey Costello"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "7cadab99-44c8-48df-80b9-dc479551cd14"
        }
	}
	tags = local.tags
}
