output "lambda_function_associations_map" {
  value = {
    "checkholiday" = aws_connect_lambda_function_association.checkholiday.id,
    "goodmeasures_connect_getnumberinfofunction" = aws_connect_lambda_function_association.goodmeasures_connect_getnumberinfofunction.id,
    "goodmeasures_connect_phonenumberbyextensionfunction" = aws_connect_lambda_function_association.goodmeasures_connect_phonenumberbyextensionfunction.id,
    "transcriptcreate_transcription_table_item" = aws_connect_lambda_function_association.transcriptcreate_transcription_table_item.id,
    "transcripttranscription_trigger" = aws_connect_lambda_function_association.transcripttranscription_trigger.id,
    "retrieve_contact_information" = aws_connect_lambda_function_association.retrieve_contact_information.id,
    "retrieve_development_contact_info" = aws_connect_lambda_function_association.retrieve_development_contact_info.id
  }
}
