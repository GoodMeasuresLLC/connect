resource "aws_connect_contact_flow" "sample_inbound_flow_first_contact_experience" {
  instance_id  = var.connect_instance_id
  name         = "Sample inbound flow (first contact experience)"
  type         = "CONTACT_FLOW"
  description  = "First contact experience"
  filename     = "${path.module}/sample_inbound_flow_first_contact_experience.json"
  content_hash = filebase64sha256("${path.module}/sample_inbound_flow_first_contact_experience.json")
  tags = var.tags
}
