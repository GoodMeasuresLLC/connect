          resource "aws_connect_queue" "University_of_Michigan" {
            description  = "AHEAD-University of Michigan"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "University of Michigan"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=feaa84dd-058f-4df7-88b0-cc2b01c57ebd
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
