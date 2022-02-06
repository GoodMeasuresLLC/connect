          resource "aws_connect_queue" "AHEAD_Keystone_Clinical_Studies" {
            description  = "AHEAD-Keystone Clinical Studies"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD Keystone Clinical Studies"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=3756dc16-c30f-4b0e-8d10-bccaf4483010
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
