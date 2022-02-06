          resource "aws_connect_queue" "DHMC_Bariatric" {
            description  = "DHMC-Bariatric"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "DHMC-Bariatric"
outbound_caller_config {
outbound_caller_id_name=GM-DHMC-Bariatric
outbound_caller_id_number_id=52aa06fb-c472-42d2-8265-05a5c1810aa1
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
