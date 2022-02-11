resource "aws_connect_lambda_function_association" "transcriptcreate_transcription_table_item"{
  instance_id  = var.connect_instance_id
  function_arn         = var.lambda_functions_map["transcriptcreate_transcription_table_item"]

}
