resource "aws_connect_contact_flow" "sample_note_for_screenpop" {
  instance_id  = var.connect_instance_id
  name         = "Sample note for screenpop"
  type         = "CONTACT_FLOW"
  description  = "Screenpop is a Contact control pannel feature that allows loading a web page optionally with parameters based on attributes. Refer to the screenpop documentation for more information."
  filename     = "${path.module}/sample_note_for_screenpop.json"
  content_hash = filebase64sha256("${path.module}/sample_note_for_screenpop.json")
  tags = var.tags
}
