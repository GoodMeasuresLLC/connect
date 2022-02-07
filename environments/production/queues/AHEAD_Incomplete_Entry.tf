          resource "aws_connect_queue" "ahead_incomplete_entry" {
            description  = "AHEAD-Incomplete Entry"
            hours_of_operation_id = var.hours_of_operations_map[ahead_study]
            instance_id  = var.connect_instance_id
            name         = "AHEAD-Incomplete Entry"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=64a87650-4121-4a02-97ff-f0b22d94c1ac
outbound_flow_id=${var.flows_map[_00_mainpatient_flow_in_open]}
}            }
            tags = local.tags
          }
