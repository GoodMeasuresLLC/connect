          resource "aws_connect_queue" "ahead" {
            description  = "AHEAD Inbound Queue"
            hours_of_operation_id = var.hours_of_operations_map[ahead_study]
            instance_id  = var.connect_instance_id
            name         = "AHEAD"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_flow_id=${var.flows_map[_00_mainpatient_flow_in_open]}
}            }
            tags = local.tags
          }
