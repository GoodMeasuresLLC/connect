resource "aws_connect_contact_flow" "sample_secure_input_with_no_agent" {
  instance_id  = var.connect_instance_id
  name         = "Sample secure input with no agent"
  type         = "CONTACT_FLOW"
  description  = "Enables the customer to enter digits in private. In a real world implementation, enabling encryption is likely preferred."
  filename     = "${path.module}/sample_secure_input_with_no_agent.json"
  content_hash = filebase64sha256("${path.module}/sample_secure_input_with_no_agent.json")
  tags = var.tags
}
