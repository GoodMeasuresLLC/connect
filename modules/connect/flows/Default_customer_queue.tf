resource "aws_connect_contact_flow" "default_customer_queue" {
  instance_id  = var.connect_instance_id
  name         = "Default customer queue"
  type         = "CUSTOMER_QUEUE"
  description  = "Default audio played when a customer is waiting in queue."
  filename     = "default_customer_queue.json"
  content_hash = filebase64sha256("default_customer_queue.json")
  tags = var.tags
}
