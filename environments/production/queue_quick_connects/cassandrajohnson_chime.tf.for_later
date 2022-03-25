resource "aws_connect_quick_connect" "cassandrajohnson_chime" {
	instance_id  = var.connect_instance_id
	name         = "CassandraJohnson-Chime"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18577020337"
        }
	}
	tags = var.tags
}
