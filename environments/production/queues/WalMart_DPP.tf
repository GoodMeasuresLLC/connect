          resource "aws_connect_queue" "WalMart_DPP" {
            description  = "WalMart - DPP"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "WalMart - DPP"
outbound_caller_config {
outbound_caller_id_name=GM-Walmart DPP
outbound_caller_id_number_id=cdfc9223-8ec5-4780-9632-4f20e9de6930
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
