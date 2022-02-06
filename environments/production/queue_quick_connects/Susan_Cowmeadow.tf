resource "aws_connect_quick_connect" "Susan_Cowmeadow" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Susan Cowmeadow"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "2940ac4c-1fe4-42e5-a24c-e73b888ebe02"
        }
	}
	tags = local.tags
}
