output "lambda_functions_map" {
  value = {
    "checkholiday" = aws_lambda_function.checkholiday.arn,
"goodmeasures_connect_getnumberinfofunction" = aws_lambda_function.goodmeasures_connect_getnumberinfofunction.arn,
"goodmeasures_connect_phonenumberbyextensionfunction" = aws_lambda_function.goodmeasures_connect_phonenumberbyextensionfunction.arn,
"transcriptcreate_transcription_table_item" = aws_lambda_function.transcriptcreate_transcription_table_item.arn,
"transcripttranscription_trigger" = aws_lambda_function.transcripttranscription_trigger.arn,
"retrieve_contact_information" = aws_lambda_function.retrieve_contact_information.arn,
"retrieve_development_contact_info" = aws_lambda_function.retrieve_development_contact_info.arn
  }
}
