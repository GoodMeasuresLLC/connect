          resource "aws_connect_queue" "AHEAD_Brigham_and_Women" {
            description  = "AHEAD-Brigham and Women Hospital Center for Alzheimer Research and Treatment"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "AHEAD Brigham and Women"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=29caad6c-92ee-451b-9951-8c8e578f5134
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
