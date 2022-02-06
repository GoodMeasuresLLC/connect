resource "aws_connect_security_profile" "Admin" {
  instance_id  = "${${instance.terraform_id}"
  name         = "Admin"
  description  = "An administrator can perform all actions available."
  tags = local.tags
}
