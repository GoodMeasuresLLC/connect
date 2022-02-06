          resource "aws_connect_queue" "Ohio_State_University" {
            description  = "AHEAD-Ohio State University"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Ohio State University"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=a19989ca-4190-4904-bdae-278d0f0033a9
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
