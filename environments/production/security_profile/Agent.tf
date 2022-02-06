resource "aws_connect_security_profile" "Agent" {
  instance_id  = "${${instance.terraform_id}"
  name         = "Agent"
  description  = "An agent is a user of the system that is focused on customer care and/or sales.  Their role is unlikely to be technical."
  tags = local.tags
}
