resource "aws_lambda_function" "transcriptionsystem_transcriptionsysdumpstreamtos3"{
  function_name="TranscriptionSystem-TranscriptionSysDumpStreamtoS3-${var.tags["environment"]}"
  tags         = var.tags
  runtime      ="java11"
  role         =var.lambda_role_arn
  handler      ="com.amazonaws.kvstranscribestreaming.KVSTranscribeStreamingLambda::handleRequest"
  timeout      = 300
  memory_size  = 512
  package_type ="Zip"
  s3_bucket    =var.s3_deployment_bucket
  s3_key       ="transcriptionsystem_transcriptionsysdumpstreamtos3.zip"
  depends_on = [aws_cloudwatch_log_group.log_group-transcriptionsystem_transcriptionsysdumpstreamtos3]
}

resource "aws_cloudwatch_log_group" "log_group-transcriptionsystem_transcriptionsysdumpstreamtos3" {
  name = "/aws/lambda/TranscriptionSystem-TranscriptionSysDumpStreamtoS3${var.tags["environment"]}"
  retention_in_days = var.log_retention_days
}

