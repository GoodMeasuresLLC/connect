resource "aws_connect_queue" "wellcare_kentucky_toll_free" {
  description  = "Wellcare Kentucky Toll Free"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  max_contacts = 10
  name         = "Wellcare Kentucky Toll Free"
  outbound_caller_config {
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }            tags = var.tags
          }
