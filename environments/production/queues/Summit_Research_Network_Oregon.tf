          resource "aws_connect_queue" "Summit_Research_Network_Oregon" {
            description  = "AHEAD-Summit Research Network, Oregon"
            hours_of_operation_id = "${aws_connect_hours_of_operation.AHEAD_Study.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Summit Research Network, Oregon"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=25872c39-715a-4aee-af60-a98af7915ecd
outbound_flow_id=${aws_connect_contact_flow._00_MainPatient_Flow_In_Open.id}
}            }
            tags = local.tags
          }
