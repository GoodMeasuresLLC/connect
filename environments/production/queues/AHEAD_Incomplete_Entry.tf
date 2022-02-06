          resource "aws_connect_queue" "AHEAD_Incomplete_Entry" {
            description  = "AHEAD-Incomplete Entry"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD-Incomplete Entry"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=64a87650-4121-4a02-97ff-f0b22d94c1ac
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
