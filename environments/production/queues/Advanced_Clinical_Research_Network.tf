          resource "aws_connect_queue" "Advanced_Clinical_Research_Network" {
            description  = "AHEAD-Advanced Clinical Research Network"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Advanced Clinical Research Network"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=a039b93b-1dc2-401d-9bbe-9548e11600ca
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
