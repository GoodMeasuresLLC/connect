          resource "aws_connect_queue" "Banner_Alzheimer_s_Institute" {
            description  = "AHEAD-Banner Alzheimer's Institute"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Banner Alzheimer's Institute"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=57573f07-5cc3-45ad-8697-edabdd281e9d
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
