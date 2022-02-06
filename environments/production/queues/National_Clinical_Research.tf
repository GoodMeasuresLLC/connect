          resource "aws_connect_queue" "National_Clinical_Research" {
            description  = "AHEAD-National Clinical Research"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "National Clinical Research"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=f74d6870-ebe1-4589-86ca-31486b5d48d9
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
