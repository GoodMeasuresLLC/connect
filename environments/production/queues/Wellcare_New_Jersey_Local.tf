          resource "aws_connect_queue" "Wellcare_New_Jersey_Local" {
            description  = "Wellcare New Jersey Local"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Wellcare New Jersey Local"
outbound_caller_config {
outbound_caller_id_name=WellCare of NJ
outbound_caller_id_number_id=d111231e-6bcb-4c7a-9a4a-2487ad491cac
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
