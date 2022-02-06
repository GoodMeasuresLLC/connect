          resource "aws_connect_queue" "Wellcare_North_Carolina_Toll_Free" {
            description  = "Wellcare North Carolina Toll Free"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Wellcare North Carolina Toll Free"
outbound_caller_config {
outbound_caller_id_name=Good Measures
outbound_caller_id_number_id=d528a7c3-566c-4598-a441-588427beb2d4
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
