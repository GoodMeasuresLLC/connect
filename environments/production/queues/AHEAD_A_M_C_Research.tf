          resource "aws_connect_queue" "AHEAD_A_M_C_Research" {
            description  = "AHEAD-A M C Research"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD A M C Research"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=a2548080-8ae7-4085-b8c3-9d99aa3e3daf
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
