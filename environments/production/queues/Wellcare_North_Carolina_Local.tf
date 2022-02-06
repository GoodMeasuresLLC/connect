          resource "aws_connect_queue" "Wellcare_North_Carolina_Local" {
            description  = "Wellcare North Carolina Local"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Good_Measures.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "Wellcare North Carolina Local"
outbound_caller_config {
outbound_caller_id_name=Good Measures
outbound_caller_id_number_id=1f16dddf-1041-4759-af5e-4aabcdf4191f
outbound_flow_id=${aws_connect_contact_flow._0x_GM_Outbound.id}
}            }
            tags = local.tags
          }
