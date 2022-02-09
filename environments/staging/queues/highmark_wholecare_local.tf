resource "aws_connect_queue" "highmark_wholecare_local" {
  description  = "Highmark Wholecare Local"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Highmark Wholecare Local"
  outbound_caller_config {
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }            tags = var.tags
          }
