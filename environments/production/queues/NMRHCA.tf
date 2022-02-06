          resource "aws_connect_queue" "NMRHCA" {
            description  = "NMRHCA"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "NMRHCA"
outbound_caller_config {
outbound_caller_id_name=GM-NMRHCA
outbound_caller_id_number_id=2654a116-2d66-44de-b717-2cda848fa199
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
