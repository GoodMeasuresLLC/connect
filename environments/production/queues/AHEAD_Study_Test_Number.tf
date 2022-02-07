          resource "aws_connect_queue" "ahead_study_test_number" {
            description  = "AHEAD Study Test Number"
            hours_of_operation_id = var.hours_of_operations_map[good_measures]
            instance_id  = var.connect_instance_id
            name         = "AHEAD Study Test Number"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=1d3a43d8-0fdc-4538-8d22-364a365e7bca
outbound_flow_id=${var.flows_map[_00_mainpatient_flow_in_open]}
}            }
            tags = local.tags
          }
