          resource "aws_connect_queue" "on_duo_coca_cola" {
            description  = "Onduo Coke"
            hours_of_operation_id = aws_connect_hours_of_operation.good_measures.hours_of_operation_id
            instance_id  = aws_connect_instance.connect.id
            name         = "On Duo Coca Cola"
outbound_caller_config {
outbound_caller_id_name=Good Measures
outbound_caller_id_number_id=7fb69eaf-2e15-4f63-b147-702b5f3b58f9
outbound_flow_id=${aws_connect_contact_flow._00_mainpatient_flow_in_open.contact_flow_id}
}            }
            tags = local.tags
          }
