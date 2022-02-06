          resource "aws_connect_queue" "A_D_A_Ready_Set_Go" {
            description  = "ADA Ready Set Go Pilot"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "A D A Ready Set Go"
outbound_caller_config {
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
