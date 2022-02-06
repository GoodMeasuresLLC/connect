resource "aws_connect_contact_flow" "_0x_Good_Measures_Queue_Flow" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "0x Good Measures Queue Flow"
  type         = "CUSTOMER_QUEUE"
  description  = ""
  filename     = "_0x_Good_Measures_Queue_Flow.json"
  content_hash = filebase64sha256("_0x_Good_Measures_Queue_Flow.json")
  tags = local.tags
}
