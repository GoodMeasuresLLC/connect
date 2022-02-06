          resource "aws_connect_queue" "Martins_Point" {
            description  = "Martins Point"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Martins Point"
outbound_caller_config {
outbound_caller_id_name=GM-Martins Point
outbound_caller_id_number_id=e033c5e6-a635-4479-8cbb-25e22dae4c6c
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
