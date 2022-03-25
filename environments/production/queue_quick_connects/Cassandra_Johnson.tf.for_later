resource "aws_connect_quick_connect" "Cassandra_Johnson" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Cassandra Johnson"
	quick_connect_config {
	  quick_connect_type = "USER"

        user_config {
          contact_flow_id = "${aws_connect_contact_flow.Default_agent_transfer.id}"
            user_id = "25f1422a-63a3-49e6-ac8f-c0cdccee8e81"
        }
	}
	tags = local.tags
}
