resource "aws_connect_contact_flow" "sample_interruptible_queue_flow_with_callback" {
  instance_id  = var.connect_instance_id
  name         = "Sample interruptible queue flow with callback"
  type         = "CUSTOMER_QUEUE"
  description  = "Plays looping audio and offers a callback to the customer every thirty seconds"
  filename     = "${path.module}/sample_interruptible_queue_flow_with_callback.json"
  content_hash = filebase64sha256("${path.module}/sample_interruptible_queue_flow_with_callback.json")
  tags = var.tags
}
