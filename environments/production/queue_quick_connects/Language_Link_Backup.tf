resource "aws_connect_quick_connect" "Language_Link_Backup" {
	instance_id  = "${aws_connect_instance.connect.id}"
	name         = "Language Link (Backup)"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18779637466"
        }
	}
	tags = local.tags
}
