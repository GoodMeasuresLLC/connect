resource "aws_connect_contact_flow" "sample_queue_configurations_flow" {
  instance_id  = var.connect_instance_id
  name         = "Sample queue configurations flow"
  type         = "CONTACT_FLOW"
  description  = "Puts a customer in queue and gives them the option to be first in queue, last in queue or to be called back."
  filename     = "${path.module}/sample_queue_configurations_flow.json"
  content_hash = filebase64sha256("${path.module}/sample_queue_configurations_flow.json")
  tags = var.tags
}
