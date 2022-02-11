resource "aws_connect_contact_flow" "sample_queue_customer" {
  instance_id  = var.connect_instance_id
  name         = "Sample queue customer"
  type         = "CONTACT_FLOW"
  description  = "Places the customer in a queue."
  filename     = "${path.module}/sample_queue_customer.json"
  content_hash = filebase64sha256("${path.module}/sample_queue_customer.json")
  tags = var.tags
}
