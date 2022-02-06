          resource "aws_connect_queue" "University_of_California_Davis" {
            description  = "AHEAD-University of California, Davis"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "University of California, Davis"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=2d0cf70b-df5b-4c18-a220-741630dcfda1
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
