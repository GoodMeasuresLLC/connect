          resource "aws_connect_queue" "G_M_CVS_BioTel_Care_CVS_BIO_GRTNG" {
            description  = "CVS-BioTel Care (CVS-BIO GRTNG)"
            hours_of_operation_id = "${aws_connect_hours_of_operation.BioTel_Care.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "G M CVS-BioTel Care (CVS-BIO GRTNG)"
outbound_caller_config {
outbound_caller_id_name=GM-CVS-BioTel Care
outbound_caller_id_number_id=bbbf26e1-c527-4104-917b-9f88d90fbd34
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
