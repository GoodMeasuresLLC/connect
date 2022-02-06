resource "aws_connect_security_profile" "CallCenterManager" {
  instance_id  = "${${instance.terraform_id}"
  name         = "CallCenterManager"
  description  = "A call center manager (or call center admin) manages the day-to-day aspects of the call center."
  tags = local.tags
}
