resource "aws_connect_quick_connect" "_153_cleveland_clinic_las_vegas" {
	instance_id  = var.connect_instance_id
	name         = "153 Cleveland Clinic Las Vegas"
	quick_connect_config {
	  quick_connect_type = "PHONE_NUMBER"

        phone_config {
          phone_number = "+17023317048"
        }
	}
	tags = var.tags
}
