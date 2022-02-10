resource "aws_connect_queue" "wellcare_new_jersey_toll_free" {
  description  = "Wellcare New Jersey Toll Free"
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Wellcare New Jersey Toll Free"
  outbound_caller_config {
    outbound_caller_id_name="WellCare of NJ"
    outbound_caller_id_number_id="c6aeb423-0792-498c-a7a1-1b146dd7f2b7"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
