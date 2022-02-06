resource "aws_connect_quick_connect" "CassandraJohnson" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "CassandraJohnson"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020337"
        }
	}
	tags = local.tags
}
