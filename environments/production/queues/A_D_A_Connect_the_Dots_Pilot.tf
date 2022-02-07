          resource "aws_connect_queue" "a_d_a_connect_the_dots_pilot" {
            description  = "ADA Connect the Dots Pilot"
            hours_of_operation_id = var.hours_of_operations_map[good_measures]
            instance_id  = var.connect_instance_id
            name         = "A D A Connect the Dots Pilot"
outbound_caller_config {
outbound_caller_id_name=ADA Connect the Dots
outbound_caller_id_number_id=fc5c37a5-03cc-4fc4-a58f-dd10d7cb6223
outbound_flow_id=${var.flows_map[_0x_gm_outbound]}
}            }
            tags = local.tags
          }
