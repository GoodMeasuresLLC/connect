          resource "aws_connect_queue" "U_S_F_Health_Byrd_Alzheimer_s_Institute" {
            description  = "AHEAD-U S F Health Byrd Alzheimer’s Institute"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "U S F Health Byrd Alzheimer’s Institute"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=64b8dd1a-87f3-4dea-bb38-165f36d278c2
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
