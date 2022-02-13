resource "aws_lambda_function" "transcripttranscription_trigger"{
  function_name="TranscriptTranscription-Trigger-${var.tags["environment"]}"
  description  = ""
  tags         = var.tags
  runtime      ="nodejs14.x"
  role         = var.lambda_role_arn
  handler      ="index.handler"
  timeout      = 3
  memory_size  = 128
  package_type ="Zip"
  filename     = "../../compiled/transcripttranscription_trigger.zip"
  source_code_hash = filebase64sha256("../../compiled/transcripttranscription_trigger.zip")
  depends_on = [aws_cloudwatch_log_group.log_group-transcripttranscription_trigger]
}

resource "aws_cloudwatch_log_group" "log_group-transcripttranscription_trigger" {
  name = "/aws/lambda/TranscriptTranscription-Trigger-${var.tags["environment"]}"
  retention_in_days = var.log_retention_days
}

