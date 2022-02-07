resource "aws_connect_contact_flow" "_0x_good_measures_queue_flow" {
  instance_id  = var.connect_instance_id
  name         = "0x Good Measures Queue Flow"
  type         = "CUSTOMER_QUEUE"
  description  = ""
  filename     = "_0x_good_measures_queue_flow.json"
  content_hash = filebase64sha256("_0x_good_measures_queue_flow.json")
  tags = var.tags
}
