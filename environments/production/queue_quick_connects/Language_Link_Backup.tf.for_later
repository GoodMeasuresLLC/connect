resource "aws_connect_quick_connect" "language_link_backup" {
	instance_id  = var.connect_instance_id
	name         = "Language Link (Backup)"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18779637466"
        }
	}
	tags = var.tags
}
