resource "aws_connect_queue" "z_voicemail_queue" {
  description  = "A queue with agents assigned to stop voicemails from being interrupted."
  hours_of_operation_id = var.hours_of_operations_map["good_measures"]
  instance_id  = var.connect_instance_id
  name         = "Z - Voicemail Queue"
  outbound_caller_config {
    outbound_caller_id_name="Good Measures"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
