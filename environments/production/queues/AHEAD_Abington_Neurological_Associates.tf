          resource "aws_connect_queue" "AHEAD_Abington_Neurological_Associates" {
            description  = "AHEAD-Abington Neurological Associates"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD Abington Neurological Associates"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=c3689e81-4705-436f-b5e3-952b7afc1231
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
