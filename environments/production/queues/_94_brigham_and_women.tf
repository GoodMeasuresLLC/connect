resource "aws_connect_queue" "_94_brigham_and_women" {
  description  = "AHEAD-Brigham and Women Hospital Center for Alzheimer Research and Treatment"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "94 Brigham and Women"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="29caad6c-92ee-451b-9951-8c8e578f5134"
  }
  tags = var.tags
}
