          resource "aws_connect_queue" "AHEAD" {
            description  = "AHEAD Inbound Queue"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
