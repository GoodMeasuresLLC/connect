resource "aws_connect_security_profile" "qualityanalyst" {
  instance_id  = "${var.connect_instance_id}"
  name         = "QualityAnalyst"
  description  = "A quality analyst works to improve the customer experience and keeps track of live service metrics."
  tags = var.tags
}
