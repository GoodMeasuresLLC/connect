          resource "aws_connect_queue" "Columbia_University" {
            description  = "AHEAD-Columbia University (Spanish)"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Columbia University"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=55aaf4db-2c41-4e56-802e-573f4e61894a
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
