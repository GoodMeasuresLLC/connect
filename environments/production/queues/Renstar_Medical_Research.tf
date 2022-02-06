          resource "aws_connect_queue" "Renstar_Medical_Research" {
            description  = "AHEAD-Renstar Medical Research"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Renstar Medical Research"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=2bf4a79b-68dc-4acb-b6eb-df6e0c9016b2
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
