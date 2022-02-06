          resource "aws_connect_queue" "A_D_A_Connect_the_Dots_Pilot" {
            description  = "ADA Connect the Dots Pilot"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "A D A Connect the Dots Pilot"
outbound_caller_config {
outbound_caller_id_name=ADA Connect the Dots
outbound_caller_id_number_id=fc5c37a5-03cc-4fc4-a58f-dd10d7cb6223
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
