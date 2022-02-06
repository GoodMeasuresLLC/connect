          resource "aws_connect_queue" "Transform_Care" {
            description  = "Transform Care"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Transform Care"
outbound_caller_config {
outbound_caller_id_name=GM-Transform Care
outbound_caller_id_number_id=228accb9-c7e2-4b27-965c-eb91eca63ee0
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
