          resource "aws_connect_queue" "G_M_Presbyterian_Employee" {
            description  = "Presbyterian Employee HW"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "G M Presbyterian Employee"
outbound_caller_config {
outbound_caller_id_name=GM-Presbyterian Employee
outbound_caller_id_number_id=554ea6c3-9d7f-44eb-b92e-119835242b87
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
