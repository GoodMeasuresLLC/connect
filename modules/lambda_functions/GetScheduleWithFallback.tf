resource "aws_lambda_function" "GetScheduleWithFallback" {
  function_name    = "GetScheduleWithFallback-${var.tags["environment"]}"
  description      = ""
  tags             = var.tags
  runtime          = "ruby2.7"
  role             = var.lambda_role_arn
  handler          = "CodeIntegration.CodeIntegration.get_schedule_with_fallback"
  timeout          = 3
  memory_size      = 128
  package_type     = "Zip"
  filename         = "../../compiled/code_integration.zip"
  source_code_hash = filebase64sha256("../../compiled/code_integration.zip")
  depends_on       = [aws_cloudwatch_log_group.log_group-GetScheduleWithFallback]
  environment {
    variables = {
      username = var.ameliaUsername
      password = var.ameliaPassword
    }
  }
}

resource "aws_cloudwatch_log_group" "log_group-GetScheduleWithFallback" {
  name              = "/aws/lambda/GetScheduleWithFallback-${var.tags["environment"]}"
  retention_in_days = var.log_retention_days
}
