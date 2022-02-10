resource "aws_connect_queue" "_332_university_of_washington" {
  description  = "AHEAD-University of Washington"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "332 University of Washington"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="318b0310-32cc-448b-ab3f-13e534ce2adc"
  }
  tags = var.tags
}
