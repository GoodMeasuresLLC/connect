          resource "aws_connect_queue" "Mount_Sinai_School_of_Medicine" {
            description  = "AHEAD-Mount Sinai School of Medicine"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Mount Sinai School of Medicine"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=75c74e9d-990a-4833-91b2-185ca3e83dca
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
