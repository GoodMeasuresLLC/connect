resource "aws_connect_security_profile" "New_Hire" {
  instance_id  = "${${instance.terraform_id}"
  name         = "New Hire"
  description  = "Profile for new hire training - DO NOT DELETE"
  tags = local.tags
}
