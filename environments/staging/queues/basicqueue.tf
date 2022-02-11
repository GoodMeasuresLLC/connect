resource "aws_connect_queue" "basicqueue" {
  description  = "A simple, basic voice queue."
  hours_of_operation_id = var.hours_of_operations_map["basic_hours"]
  instance_id  = var.connect_instance_id
  name         = "BasicQueue"

  tags = var.tags
}
