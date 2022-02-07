          resource "aws_connect_queue" "transform_care" {
            description  = "Transform Care"
            hours_of_operation_id = aws_connect_hours_of_operation.good_measures.hours_of_operation_id
            instance_id  = aws_connect_instance.connect.id
            name         = "Transform Care"
outbound_caller_config {
outbound_caller_id_name=GM-Transform Care
outbound_caller_id_number_id=228accb9-c7e2-4b27-965c-eb91eca63ee0
outbound_flow_id=${aws_connect_contact_flow._0x_gm_outbound.contact_flow_id}
}            }
            tags = local.tags
          }
