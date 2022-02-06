          resource "aws_connect_queue" "AHEAD_Johns_Hopkins_University" {
            description  = "AHEAD-Johns Hopkins University"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD Johns Hopkins University"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=b6a01740-c616-4bcd-b971-e9244e8f467d
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
