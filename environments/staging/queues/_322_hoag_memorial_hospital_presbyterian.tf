resource "aws_connect_queue" "_322_hoag_memorial_hospital_presbyterian" {
  description  = "AHEAD-Hoag Memorial Hospital Presbyterian"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "322 Hoag Memorial Hospital Presbyterian"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="d5ea6333-966f-4af4-ab5c-a6c93f8d5704"
  }
  tags = var.tags
}
