          resource "aws_connect_queue" "outbound_only" {
            description  = "Outbound Only"
            hours_of_operation_id = var.hours_of_operations_map[good_measures]
            instance_id  = var.connect_instance_id
            name         = "Outbound Only"
outbound_caller_config {
outbound_caller_id_name=GM
outbound_caller_id_number_id=228accb9-c7e2-4b27-965c-eb91eca63ee0
outbound_flow_id=${var.flows_map[_0x_gm_outbound]}
}            }
            tags = local.tags
          }
