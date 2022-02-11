resource "aws_connect_contact_flow" "sample_disconnect_flow" {
  instance_id  = var.connect_instance_id
  name         = "Sample disconnect flow"
  type         = "CONTACT_FLOW"
  description  = "Enables customer to transfer to another flow after the agent has disconnected."
  filename     = "${path.module}/sample_disconnect_flow.json"
  content_hash = filebase64sha256("${path.module}/sample_disconnect_flow.json")
  tags = var.tags
}
