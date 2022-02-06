          resource "aws_connect_queue" "Parkwood_Institute" {
            description  = "AHEAD-Parkwood Institute"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Parkwood Institute"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=7070efbd-4c02-4ddc-b0aa-d5d57eba2410
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
