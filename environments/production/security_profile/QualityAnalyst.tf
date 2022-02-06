resource "aws_connect_security_profile" "QualityAnalyst" {
  instance_id  = "${${instance.terraform_id}"
  name         = "QualityAnalyst"
  description  = "A quality analyst works to improve the customer experience and keeps track of live service metrics."
  tags = local.tags
}
