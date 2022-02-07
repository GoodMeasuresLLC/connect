resource "aws_connect_contact_flow" "default_queue_transfer" {
  instance_id  = var.connect_instance_id
  name         = "Default queue transfer"
  type         = "QUEUE_TRANSFER"
  description  = "Default flow used to transfer to a queue."
  filename     = "default_queue_transfer.json"
  content_hash = filebase64sha256("default_queue_transfer.json")
  tags = var.tags
}
