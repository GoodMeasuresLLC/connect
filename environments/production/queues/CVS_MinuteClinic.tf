          resource "aws_connect_queue" "CVS_MinuteClinic" {
            description  = "CVS-MinuteClinic"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "CVS-MinuteClinic"
outbound_caller_config {
outbound_caller_id_name=GM-CVS-MinuteClinic
outbound_caller_id_number_id=38c6e707-a64f-4f67-a2c3-706a8960fb28
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
