resource "aws_connect_quick_connect" "_324_sharp_neurocognitive" {
	instance_id  = var.connect_instance_id
	name         = "324 Sharp Neurocognitive"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+18588368350"
        }
	}
	tags = var.tags
}
