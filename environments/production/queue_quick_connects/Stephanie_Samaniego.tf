resource "aws_connect_quick_connect" "Stephanie_Samaniego" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Stephanie Samaniego"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_queue_transfer.id}"
            user_id = "b4538a62-f4d7-434f-a349-1175fdd404da"
        }
	}
	tags = local.tags
}
