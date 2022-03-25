resource "aws_connect_queue" "_140_v_a_puget_sound" {
  description  = "AHEAD-VA Puget Sound/Seattle Institute for Biomedical and Clinical Research"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "140 V A Puget Sound"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="9ade3337-2180-4511-8946-1da4e091a7f2"
  }
  tags = var.tags
}
