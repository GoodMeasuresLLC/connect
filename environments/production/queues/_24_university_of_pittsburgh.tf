resource "aws_connect_queue" "_24_university_of_pittsburgh" {
  description  = "AHEAD-University of Pittsburgh"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "24 University of Pittsburgh"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="76588245-7de4-47d4-9fb2-02a6bf301a4f"
    outbound_flow_id=var.flows_map["_00_mainpatient_flow_in_open"]
  }            tags = var.tags
          }
