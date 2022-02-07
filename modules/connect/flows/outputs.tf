output "flows_map" {
  value = {
    "_00_mainpatient_flow_in_open" = aws_connect_contact_flow._00_mainpatient_flow_in_open.contact_flow_id,
    "_02_gm_vvip_in_open_closed" = aws_connect_contact_flow._02_gm_vvip_in_open_closed.contact_flow_id,
    "_01_goodmeasures_corp_in_closed" = aws_connect_contact_flow._01_goodmeasures_corp_in_closed.contact_flow_id,
    "_03_ahead_voicemail_flow_spanish" = aws_connect_contact_flow._03_ahead_voicemail_flow_spanish.contact_flow_id,
    "default_agent_whisper" = aws_connect_contact_flow.default_agent_whisper.contact_flow_id,
    "_03_ahead_patient_flow_in_open" = aws_connect_contact_flow._03_ahead_patient_flow_in_open.contact_flow_id,
    "holiday_test_flow" = aws_connect_contact_flow.holiday_test_flow.contact_flow_id,
    "_0x_good_measures_queue_flow" = aws_connect_contact_flow._0x_good_measures_queue_flow.contact_flow_id,
    "default_agent_transfer" = aws_connect_contact_flow.default_agent_transfer.contact_flow_id,
    "_03_ahead_after_hours_spanish" = aws_connect_contact_flow._03_ahead_after_hours_spanish.contact_flow_id,
    "_0x_gm_outbound" = aws_connect_contact_flow._0x_gm_outbound.contact_flow_id,
    "_03_ahead_voicemail_flow_english" = aws_connect_contact_flow._03_ahead_voicemail_flow_english.contact_flow_id,
    "default_customer_queue" = aws_connect_contact_flow.default_customer_queue.contact_flow_id,
    "_00_routing_flow" = aws_connect_contact_flow._00_routing_flow.contact_flow_id,
    "_01_goodmeasures_corp_in_open" = aws_connect_contact_flow._01_goodmeasures_corp_in_open.contact_flow_id,
    "_00_mainpatient_flow_in_closed" = aws_connect_contact_flow._00_mainpatient_flow_in_closed.contact_flow_id,
    "default_queue_transfer" = aws_connect_contact_flow.default_queue_transfer.contact_flow_id,
    "_03_ahead_after_hours_english" = aws_connect_contact_flow._03_ahead_after_hours_english.contact_flow_id,
    "_0x_whisper_flow" = aws_connect_contact_flow._0x_whisper_flow.contact_flow_id,
    "default_customer_whisper" = aws_connect_contact_flow.default_customer_whisper.contact_flow_id,
    "holiday_routing_test" = aws_connect_contact_flow.holiday_routing_test.contact_flow_id,
    "default_customer_hold" = aws_connect_contact_flow.default_customer_hold.contact_flow_id,
    "default_agent_hold" = aws_connect_contact_flow.default_agent_hold.contact_flow_id,
    "_0x_receptionist_queue_flow" = aws_connect_contact_flow._0x_receptionist_queue_flow.contact_flow_id,
    "_0x_dial_extension" = aws_connect_contact_flow._0x_dial_extension.contact_flow_id,
    "_0x_voicemail_flow" = aws_connect_contact_flow._0x_voicemail_flow.contact_flow_id,
    "default_outbound" = aws_connect_contact_flow.default_outbound.contact_flow_id,
    "_0x_inbound_to_agent" = aws_connect_contact_flow._0x_inbound_to_agent.contact_flow_id
  }
}
