resource "aws_connect_queue" "_82_georgetown_university" {
  description  = "AHEAD-Georgetown University"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "82 Georgetown University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="97520f5b-9858-4052-b338-4745ec22fa2b"
  }
  tags = var.tags
}
