          resource "aws_connect_queue" "University_of_Pennsylvania" {
            description  = "AHEAD-University of Pennsylvania"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "University of Pennsylvania"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=53b9ee7d-2ba1-4577-9c8f-96986d0544fe
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
