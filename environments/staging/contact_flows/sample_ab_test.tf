resource "aws_connect_contact_flow" "sample_ab_test" {
  instance_id  = var.connect_instance_id
  name         = "Sample AB test"
  type         = "CONTACT_FLOW"
  description  = "Performs A/B call distribution"
  filename     = "${path.module}/sample_ab_test.json"
  content_hash = filebase64sha256("${path.module}/sample_ab_test.json")
  tags = var.tags
}
