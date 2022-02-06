          resource "aws_connect_queue" "AHEAD_Oregon_Health_Science_University" {
            description  = "AHEAD-Oregon Health & Science University"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD Oregon Health & Science University"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=1d3a43d8-0fdc-4538-8d22-364a365e7bca
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
