          resource "aws_connect_queue" "University_of_Pittsburgh" {
            description  = "AHEAD-University of Pittsburgh"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "University of Pittsburgh"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=76588245-7de4-47d4-9fb2-02a6bf301a4f
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
