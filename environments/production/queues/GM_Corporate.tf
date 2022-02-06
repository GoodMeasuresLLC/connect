          resource "aws_connect_queue" "GM_Corporate" {
            description  = "GM Corporate"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures_Corporate.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "GM Corporate"
outbound_caller_config {
outbound_caller_id_name=GM-Corporate
outbound_caller_id_number_id=c295c126-6731-4c39-9382-2e8daa8cc221
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
