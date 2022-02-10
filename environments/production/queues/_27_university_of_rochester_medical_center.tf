resource "aws_connect_queue" "_27_university_of_rochester_medical_center" {
  description  = "AHEAD-University of Rochester Medical Center"
  hours_of_operation_id = var.hours_of_operations_map["basic_hours"]
  instance_id  = var.connect_instance_id
  name         = "27 University of Rochester Medical Center"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="6cd67875-4db7-4b3a-bdfb-603195ee40a0"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }
  tags = var.tags
}
