          resource "aws_connect_queue" "Irvine_University_of_California" {
            description  = "AHEAD-University of California Irvine"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Irvine University of California"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=12c365ba-581a-4a96-be51-9eb06a2b82f9
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
