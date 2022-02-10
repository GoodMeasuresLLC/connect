resource "aws_connect_contact_flow" "_03_ahead_after_hours_spanish" {
  instance_id  = var.connect_instance_id
  name         = "03 AHEAD After Hours Spanish"
  type         = "CONTACT_FLOW"
  description  = "Ahead After hours (Spanish)"
  filename     = "${path.module}/_03_ahead_after_hours_spanish.json"
  content_hash = filebase64sha256("${path.module}/_03_ahead_after_hours_spanish.json")
  tags = var.tags
}
