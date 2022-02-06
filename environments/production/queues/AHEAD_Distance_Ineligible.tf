          resource "aws_connect_queue" "AHEAD_Distance_Ineligible" {
            description  = "AHEAD-Distance Ineligible"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD-Distance Ineligible"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=18005758-a70a-436d-9e72-3dbef17e7afd
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
