          resource "aws_connect_queue" "Non_recorded_Outbound_Queue" {
            description  = ""
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Non-recorded Outbound Queue"
outbound_caller_config {
outbound_caller_id_name=Good Measures
outbound_caller_id_number_id=0d6f6560-dfbf-4c20-b832-47a70faa913b
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
