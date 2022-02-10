resource "aws_connect_queue" "on_duo_blue_cross_a_r" {
  description  = "On Duo Blue Cross A R"
  hours_of_operation_id = var.hours_of_operations_map["onduo_walgreens"]
  instance_id  = var.connect_instance_id
  name         = "On Duo Blue Cross A R"
  outbound_caller_config {
    outbound_caller_id_name="GM-Onduo Blue Cross AR"
    outbound_caller_id_number_id="f4b4c7eb-c10d-4fc2-b672-4a2eccf7465f"
  }
  tags = var.tags
}
