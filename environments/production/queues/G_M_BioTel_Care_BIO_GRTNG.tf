          resource "aws_connect_queue" "G_M_BioTel_Care_BIO_GRTNG" {
            description  = "BioTel Care (BIO GRTNG)"
            hours_of_operation_id = "${aws_connect_hours_of_operation.BioTel_Care.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "G M BioTel Care (BIO GRTNG)"
outbound_caller_config {
outbound_caller_id_name=GM-BioTel
outbound_caller_id_number_id=86d67803-45cf-4cb6-ba2c-80676681da91
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
