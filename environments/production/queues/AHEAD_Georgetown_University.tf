          resource "aws_connect_queue" "AHEAD_Georgetown_University" {
            description  = "AHEAD-Georgetown University"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD Georgetown University"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=97520f5b-9858-4052-b338-4745ec22fa2b
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
