resource "aws_lambda_function" "TranscriptTranscription_Trigger"{
  function_name="TranscriptTranscription-Trigger"
  description  = ""
  tags         =local.tags
  runtime      ="nodejs8.10"
  role         ="arn:aws:iam::201706955376:role/lambda_basic_execution"
  handler      ="${attributes[:handler]}"
  timeout      = 3
  memory_size  = 128
  package_type ="Zip"
  layers = [aws_lambda_layer_version.layers.arn]
  filename     = "../../compiled/TranscriptTranscription_Trigger.zip"
  source_code_hash = filebase64sha256("../../compiled/TranscriptTranscription_Trigger.zip")
}

  depends_on = [aws_cloudwatch_log_group.log_group]
}

resource "aws_cloudwatch_log_group" "log_group" {
  name = "/aws/lambda/TranscriptTranscription-Trigger"
  retention_in_days = var.log_retention_days
}

