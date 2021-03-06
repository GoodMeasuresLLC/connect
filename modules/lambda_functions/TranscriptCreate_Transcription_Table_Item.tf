resource "aws_lambda_function" "transcriptcreate_transcription_table_item"{
  function_name="TranscriptCreate-Transcription-Table-Item-${var.tags["environment"]}"
  description  = ""
  tags         = var.tags
  runtime      ="python3.7"
  role         = var.lambda_role_arn
  handler      ="index.lambda_handler"
  timeout      = 3
  memory_size  = 128
  package_type ="Zip"
  filename     = "../../compiled/transcriptcreate_transcription_table_item.zip"
  source_code_hash = filebase64sha256("../../compiled/transcriptcreate_transcription_table_item.zip")
  depends_on = [aws_cloudwatch_log_group.log_group-transcriptcreate_transcription_table_item]
  environment {
    variables = {
      DynamoDB_Region = var.region
      Table_Name = "TranscriptionData"
    }
  }
}

resource "aws_cloudwatch_log_group" "log_group-transcriptcreate_transcription_table_item" {
  name = "/aws/lambda/TranscriptCreate-Transcription-Table-Item-${var.tags["environment"]}"
  retention_in_days = var.log_retention_days
}

