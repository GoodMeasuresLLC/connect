          resource "aws_connect_queue" "Wellcare_New_Jersey_Toll_Free" {
            description  = "Wellcare New Jersey Toll Free"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Wellcare New Jersey Toll Free"
outbound_caller_config {
outbound_caller_id_name=WellCare of NJ
outbound_caller_id_number_id=c6aeb423-0792-498c-a7a1-1b146dd7f2b7
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
