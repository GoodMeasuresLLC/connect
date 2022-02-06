          resource "aws_connect_queue" "Wellcare_Kentucky_Toll_Free" {
            description  = "Wellcare Kentucky Toll Free"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
max_contacts = 10            name         = "Wellcare Kentucky Toll Free"
outbound_caller_config {
outbound_caller_id_number_id=9163387b-0ed1-4e5b-8fb4-6e9e7696ced2
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
