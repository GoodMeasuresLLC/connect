          resource "aws_connect_queue" "Presbyterian_Centennial_Local" {
            description  = "Presbyterian Centennial Local"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Presbyterian Centennial Local"
outbound_caller_config {
outbound_caller_id_name=GM-Presbyterian
outbound_caller_id_number_id=a214d038-8d06-41bf-8051-d8a4a78ca1e7
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
