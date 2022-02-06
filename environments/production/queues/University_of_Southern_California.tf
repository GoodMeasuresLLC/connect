          resource "aws_connect_queue" "University_of_Southern_California" {
            description  = "AHEAD-University of Southern California"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "University of Southern California"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=7e769b74-c31e-4d77-8695-2eb8a2f749a9
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
