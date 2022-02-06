          resource "aws_connect_queue" "AHEAD_Rhode_Island_Hospital" {
            description  = "AHEAD-Rhode Island Hospital"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD Rhode Island Hospital"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=d07ff8ef-40ce-4b3e-9325-37b736893fe5
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
