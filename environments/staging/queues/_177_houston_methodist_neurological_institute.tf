resource "aws_connect_queue" "_177_houston_methodist_neurological_institute" {
  description  = "AHEAD-Houston Methodist Neurological Institute"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "177 Houston Methodist Neurological Institute"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="66f4c58c-2b27-444d-897b-cdc84c7ed3c3"
  }
  tags = var.tags
}
