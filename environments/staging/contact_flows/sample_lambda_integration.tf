resource "aws_connect_contact_flow" "sample_lambda_integration" {
  instance_id  = var.connect_instance_id
  name         = "Sample Lambda integration"
  type         = "CONTACT_FLOW"
  description  = "Invokes a lambda function to determine information about the user."
  filename     = "${path.module}/sample_lambda_integration.json"
  content_hash = filebase64sha256("${path.module}/sample_lambda_integration.json")
  tags = var.tags
}
