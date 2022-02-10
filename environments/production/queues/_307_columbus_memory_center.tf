resource "aws_connect_queue" "_307_columbus_memory_center" {
  description  = "AHEAD-Columbus Memory Center"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "307 Columbus Memory Center"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="4e4ee3b4-86fd-4d55-bb5b-73db90c583ee"
  }
  tags = var.tags
}
