resource "aws_connect_queue" "_114_case_western_reserve_university" {
  description  = "AHEAD-Case Western Reserve University"
  hours_of_operation_id = var.hours_of_operations_map["basic_hours"]
  instance_id  = var.connect_instance_id
  name         = "114 Case Western Reserve University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
  }
  tags = var.tags
}
