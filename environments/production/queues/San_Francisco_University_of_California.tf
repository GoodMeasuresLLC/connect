          resource "aws_connect_queue" "San_Francisco_University_of_California" {
            description  = "AHEAD-San Francisco University of California"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "San Francisco University of California"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=f7fb65e8-dee4-4d8d-92ad-53dcb2739cc5
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
