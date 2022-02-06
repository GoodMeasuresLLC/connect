          resource "aws_connect_queue" "University_of_Wisconsin" {
            description  = "AHEAD-University of Wisconsin"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "University of Wisconsin"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=c077ef05-79e2-49a2-844c-0875f22443a6
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
