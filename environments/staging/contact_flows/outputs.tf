output "contact_flows_map" {
  value = {
    "sample_lambda_integration" = aws_connect_contact_flow.sample_lambda_integration.contact_flow_id,
    "default_agent_whisper" = aws_connect_contact_flow.default_agent_whisper.contact_flow_id,
    "sample_inbound_flow_first_contact_experience" = aws_connect_contact_flow.sample_inbound_flow_first_contact_experience.contact_flow_id,
    "default_agent_hold" = aws_connect_contact_flow.default_agent_hold.contact_flow_id,
    "default_customer_queue" = aws_connect_contact_flow.default_customer_queue.contact_flow_id,
    "sample_ab_test" = aws_connect_contact_flow.sample_ab_test.contact_flow_id,
    "sample_secure_input_with_no_agent" = aws_connect_contact_flow.sample_secure_input_with_no_agent.contact_flow_id,
    "sample_disconnect_flow" = aws_connect_contact_flow.sample_disconnect_flow.contact_flow_id,
    "default_queue_transfer" = aws_connect_contact_flow.default_queue_transfer.contact_flow_id,
    "default_outbound" = aws_connect_contact_flow.default_outbound.contact_flow_id,
    "default_agent_transfer" = aws_connect_contact_flow.default_agent_transfer.contact_flow_id,
    "sample_queue_customer" = aws_connect_contact_flow.sample_queue_customer.contact_flow_id,
    "default_customer_whisper" = aws_connect_contact_flow.default_customer_whisper.contact_flow_id,
    "_0x_whisper_flow" = aws_connect_contact_flow._0x_whisper_flow.contact_flow_id,
    "_0x_gm_outbound" = aws_connect_contact_flow._0x_gm_outbound.contact_flow_id,
    "sample_interruptible_queue_flow_with_callback" = aws_connect_contact_flow.sample_interruptible_queue_flow_with_callback.contact_flow_id,
    "sample_secure_input_with_agent" = aws_connect_contact_flow.sample_secure_input_with_agent.contact_flow_id,
    "sample_queue_configurations_flow" = aws_connect_contact_flow.sample_queue_configurations_flow.contact_flow_id,
    "default_customer_hold" = aws_connect_contact_flow.default_customer_hold.contact_flow_id,
    "sample_note_for_screenpop" = aws_connect_contact_flow.sample_note_for_screenpop.contact_flow_id,
    "sample_recording_behavior" = aws_connect_contact_flow.sample_recording_behavior.contact_flow_id
  }
}
