          resource "aws_connect_queue" "a_d_a_ready_set_go" {
            description  = "ADA Ready Set Go Pilot"
            hours_of_operation_id = aws_connect_hours_of_operation.good_measures.hours_of_operation_id
            instance_id  = aws_connect_instance.connect.id
            name         = "A D A Ready Set Go"
outbound_caller_config {
outbound_flow_id=${aws_connect_contact_flow._0x_gm_outbound.contact_flow_id}
}            }
            tags = local.tags
          }
