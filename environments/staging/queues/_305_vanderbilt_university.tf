resource "aws_connect_queue" "_305_vanderbilt_university" {
  description  = "AHEAD-Vanderbilt University Medical Center"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "305 Vanderbilt University"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="20c583cd-db59-46d1-a853-752a17582daf"
  }
  tags = var.tags
}
