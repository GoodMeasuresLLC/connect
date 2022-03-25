resource "aws_connect_quick_connect" "Phelan_Howell" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Phelan Howell"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "3d604a27-3186-406a-a740-7c330885e781"
        }
	}
	tags = local.tags
}
