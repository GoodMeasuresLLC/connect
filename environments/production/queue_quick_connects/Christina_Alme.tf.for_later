resource "aws_connect_quick_connect" "Christina_Alme" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Christina Alme"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "551fe8bf-7312-4131-9efb-581107e10650"
        }
	}
	tags = local.tags
}
