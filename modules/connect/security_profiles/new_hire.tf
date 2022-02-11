resource "aws_connect_security_profile" "new_hire" {
  instance_id  = "${var.connect_instance_id}"
  name         = "New Hire"
  description  = "Profile for new hire training - DO NOT DELETE"
  tags = var.tags
}
