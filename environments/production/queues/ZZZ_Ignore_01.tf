          resource "aws_connect_queue" "zzz_ignore_01" {
            description  = "A"
            hours_of_operation_id = aws_connect_hours_of_operation.basic_hours.hours_of_operation_id
            instance_id  = aws_connect_instance.connect.id
            name         = "ZZZ - Ignore 01"
            }
            tags = local.tags
          }
