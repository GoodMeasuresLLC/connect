resource "aws_connect_contact_flow" "Default_queue_transfer" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "Default queue transfer"
  type         = "QUEUE_TRANSFER"
  description  = "Default flow used to transfer to a queue."
  filename     = "Default_queue_transfer.json"
  content_hash = filebase64sha256("Default_queue_transfer.json")
  tags = local.tags
}
