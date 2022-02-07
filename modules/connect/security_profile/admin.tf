resource "aws_connect_security_profile" "admin" {
  instance_id  = "${var.connect_instance_id}"
  name         = "Admin"
  description  = "An administrator can perform all actions available."
  tags = var.tags
}
