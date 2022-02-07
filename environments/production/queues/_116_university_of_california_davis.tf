          resource "aws_connect_queue" "_116_university_of_california_davis" {
            description  = "AHEAD-University of California, Davis"
            hours_of_operation_id = aws_connect_hours_of_operation.ahead_study.hours_of_operation_id
            instance_id  = aws_connect_instance.connect.id
            name         = "116 University of California Davis"
outbound_caller_config {
outbound_caller_id_name=AHEAD Study
outbound_caller_id_number_id=2d0cf70b-df5b-4c18-a220-741630dcfda1
outbound_flow_id=${aws_connect_contact_flow._00_mainpatient_flow_in_open.contact_flow_id}
}            }
            tags = local.tags
          }
