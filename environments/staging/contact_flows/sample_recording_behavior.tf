resource "aws_connect_contact_flow" "sample_recording_behavior" {
  instance_id  = var.connect_instance_id
  name         = "Sample recording behavior"
  type         = "CONTACT_FLOW"
  description  = "Sample flow to enable recording behavior"
  filename     = "${path.module}/sample_recording_behavior.json"
  content_hash = filebase64sha256("${path.module}/sample_recording_behavior.json")
  tags = var.tags
}
