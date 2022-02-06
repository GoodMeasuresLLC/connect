          resource "aws_connect_queue" "ZZZ_Ignore_01" {
            description  = "A"
            hours_of_operation_id = "${aws_connect_hours_of_operation.Basic_Hours.id}"
            instance_id  = "${${instance.terraform_id}"
            name         = "ZZZ - Ignore 01"
            }
            tags = local.tags
          }
