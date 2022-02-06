          resource "aws_connect_queue" "Great_Point_Properties" {
            description  = "Great Point Properties"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Great Point Properties"
outbound_caller_config {
outbound_caller_id_name=GM-Great Point Properties
outbound_caller_id_number_id=3bd3e13f-9d21-4149-a192-dc05260634b2
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
