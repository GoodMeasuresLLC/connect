          resource "aws_connect_queue" "G_M_On_Duo_Coca_Cola" {
            description  = "Onduo Coke"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "G M On Duo Coca Cola"
outbound_caller_config {
outbound_caller_id_name=Good Measures
outbound_caller_id_number_id=7fb69eaf-2e15-4f63-b147-702b5f3b58f9
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
