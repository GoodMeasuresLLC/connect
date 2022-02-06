          resource "aws_connect_queue" "AHEAD_Spanish" {
            description  = "AHEAD-Spanish"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD-Spanish"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=4af113ca-7e6f-4eb2-afe2-96d5e4bb63fd
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
