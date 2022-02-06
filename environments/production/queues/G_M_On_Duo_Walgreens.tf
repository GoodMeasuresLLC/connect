          resource "aws_connect_queue" "G_M_On_Duo_Walgreens" {
            description  = "Onduo Walgreens"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Onduo_Walgreens.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "G M On Duo Walgreens"
outbound_caller_config {
outbound_caller_id_name=GM-Onduo Walgreens
outbound_caller_id_number_id=e95b7bda-0455-465c-b091-7138de9d62f9
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
