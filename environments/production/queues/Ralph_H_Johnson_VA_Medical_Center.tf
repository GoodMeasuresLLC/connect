          resource "aws_connect_queue" "Ralph_H_Johnson_VA_Medical_Center" {
            description  = "AHEAD-Ralph H. Johnson VA Medical Center"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Ralph H. Johnson VA Medical Center"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=4fcd29fe-5181-4046-9c55-b9f90123b676
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
