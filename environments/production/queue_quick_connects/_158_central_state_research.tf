resource "aws_connect_quick_connect" "_158_central_state_research" {
	instance_id  = var.connect_instance_id
	name         = "158 Central State Research"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+19186455400"
        }
	}
	tags = var.tags
}
