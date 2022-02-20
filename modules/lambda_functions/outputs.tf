output "lambda_functions_map" {
  value = {
    "AmeliaGatewayAmazonLex" = aws_lambda_function.AmeliaGatewayAmazonLex.arn,
    "checkholiday" = aws_lambda_function.checkholiday.arn,
    "goodmeasures_connect_getnumberinfofunction" = aws_lambda_function.goodmeasures_connect_getnumberinfofunction.arn,
    "goodmeasures_connect_phonenumberbyextensionfunction" = aws_lambda_function.goodmeasures_connect_phonenumberbyextensionfunction.arn,
    "transcriptcreate_transcription_table_item" = aws_lambda_function.transcriptcreate_transcription_table_item.arn,
    "transcriptcreate_transcription_table_item" = aws_lambda_function.transcriptcreate_transcription_table_item.arn,
    "transcripttranscription_trigger" = aws_lambda_function.transcripttranscription_trigger.arn,
    "retrieve_contact_information" = aws_lambda_function.retrieve_contact_information.arn,
    "retrieve_development_contact_info" = aws_lambda_function.retrieve_development_contact_info.arn
    "RecordInteraction"    = aws_lambda_function.RecordInteraction.arn
    "GetSchedule"    = aws_lambda_function.GetSchedule.arn
    "GetScheduleWithFallback" = aws_lambda_function.GetScheduleWithFallback.arn
    "GetScheduleCached"    = aws_lambda_function.GetScheduleCached.arn
    "RescheduleAppointment"    = aws_lambda_function.RescheduleAppointment.arn
    "ConfirmAppointment"    = aws_lambda_function.ConfirmAppointment.arn
    "CancelAppointment"    = aws_lambda_function.CancelAppointment.arn
    "DumpEvent"    = aws_lambda_function.DumpEvent.arn
  }
}
