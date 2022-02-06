          resource "aws_connect_queue" "Wien_Center_for_Clinical_Research" {
            description  = "AHEAD-Wien Center for Clinical Research (Spanish)"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Wien Center for Clinical Research"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=2008f736-2942-4510-b8b2-50778f13d1dd
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
