          resource "aws_connect_queue" "Highmark_Wholecare_Local" {
            description  = "Highmark Wholecare Local"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Highmark Wholecare Local"
outbound_caller_config {
outbound_caller_id_name=Good Measures
outbound_caller_id_number_id=e18e5962-57cc-4263-9aa2-4c60332bb978
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
