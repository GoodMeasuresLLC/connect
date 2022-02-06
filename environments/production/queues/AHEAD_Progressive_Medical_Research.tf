          resource "aws_connect_queue" "AHEAD_Progressive_Medical_Research" {
            description  = "AHEAD-Progressive Medical Research"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD Progressive Medical Research"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=f1cc20bf-b45b-4dac-a998-77e1660dbf02
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
