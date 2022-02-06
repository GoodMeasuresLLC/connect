          resource "aws_connect_queue" "Glytec_BIDCO_DCMT_GRTNG" {
            description  = "Glytec-BIDCO (DCMT GRTNG)"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Glytec_BIDCO.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Glytec-BIDCO (DCMT GRTNG)"
outbound_caller_config {
outbound_caller_id_name=GM-Glytec-BIDCO
outbound_caller_id_number_id=c9b8cab8-ba1a-4bf3-a118-a08a734f44c5
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
