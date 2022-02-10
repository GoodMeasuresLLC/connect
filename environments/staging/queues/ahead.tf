resource "aws_connect_queue" "ahead" {
  description  = "AHEAD Inbound Queue"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "AHEAD"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="f7dbbc35-2e83-4e84-80c5-8ad910c06c2d"
  }
  tags = var.tags
}
