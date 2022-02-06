          resource "aws_connect_queue" "GM_VVIP" {
            description  = "GM VVIP"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "GM VVIP"
outbound_caller_config {
outbound_caller_id_name=GM-VVIP
outbound_caller_id_number_id=2e50df2f-6b39-4b0e-926d-d8d895784fd8
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
