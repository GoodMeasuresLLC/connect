          resource "aws_connect_queue" "AHEAD_Gonzalez_M_D_and_Aswad_M_D" {
            description  = "AHEAD-Gonzalez M D and Aswad M D"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD Gonzalez M D and Aswad M D"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=54be0aae-1127-40c5-a769-1284b972427f
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
