resource "aws_connect_security_profile" "callcentermanager" {
  instance_id  = "${var.connect_instance_id}"
  name         = "CallCenterManager"
  description  = "A call center manager (or call center admin) manages the day-to-day aspects of the call center."
  tags = var.tags
}
