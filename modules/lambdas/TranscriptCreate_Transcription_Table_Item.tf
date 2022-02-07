resource "aws_lambda_function" "transcriptcreate_transcription_table_item"{
  function_name="TranscriptCreate-Transcription-Table-Item"
  description  = ""
  tags         = var.tags
  runtime      ="python3.7"
  role         ="arn:aws:iam::201706955376:role/lambda_basic_execution"
  handler      ="index.lambda_handler"
  timeout      = 3
  memory_size  = 128
  package_type ="Zip"
  layers = [aws_lambda_layer_version.layers.arn]
  filename     = "../../compiled/transcriptcreate_transcription_table_item.zip"
  source_code_hash = filebase64sha256("../../compiled/transcriptcreate_transcription_table_item.zip")
}

  depends_on = [aws_cloudwatch_log_group.log_group]
}

resource "aws_cloudwatch_log_group" "log_group" {
  name = "/aws/lambda/TranscriptCreate-Transcription-Table-Item"
  retention_in_days = var.log_retention_days
}

