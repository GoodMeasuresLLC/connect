          resource "aws_connect_queue" "Houston_Methodist_Neurological_Institute" {
            description  = "AHEAD-Houston Methodist Neurological Institute"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Houston Methodist Neurological Institute"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=66f4c58c-2b27-444d-897b-cdc84c7ed3c3
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
