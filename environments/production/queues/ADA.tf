          resource "aws_connect_queue" "ADA" {
            description  = "ADA"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "ADA"
outbound_caller_config {
outbound_caller_id_name=GM-ADA
outbound_caller_id_number_id=67c97e8d-a8e6-48cb-ae23-2556e587870d
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
