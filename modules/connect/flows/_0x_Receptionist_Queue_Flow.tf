resource "aws_connect_contact_flow" "_0x_receptionist_queue_flow" {
  instance_id  = "${var.connect_instance_id}"
  name         = "0x Receptionist Queue Flow"
  type         = "CUSTOMER_QUEUE"
  description  = ""
  filename     = "_0x_receptionist_queue_flow.json"
  content_hash = filebase64sha256("_0x_receptionist_queue_flow.json")
  tags = var.tags
}
