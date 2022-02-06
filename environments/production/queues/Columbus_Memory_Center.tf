          resource "aws_connect_queue" "Columbus_Memory_Center" {
            description  = "AHEAD-Columbus Memory Center"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Columbus Memory Center"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=4e4ee3b4-86fd-4d55-bb5b-73db90c583ee
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
