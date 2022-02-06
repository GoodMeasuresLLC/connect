          resource "aws_connect_queue" "AHEAD_Hoag_Memorial_Hospital_Presbyterian" {
            description  = "AHEAD-Hoag Memorial Hospital Presbyterian"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD Hoag Memorial Hospital Presbyterian"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=d5ea6333-966f-4af4-ab5c-a6c93f8d5704
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
