          resource "aws_connect_queue" "Yale_University_School_of_Medicine" {
            description  = "AHEAD-Yale University School of Medicine"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Yale University School of Medicine"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=491b38f2-180f-4636-b20c-9162fd7af771
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
