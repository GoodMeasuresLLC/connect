resource "aws_lambda_function" "DumpEvent" {
  function_name    = "DumpEvent-${var.tags["environment"]}"
  description      = ""
  tags             = var.tags
  runtime          = "ruby2.7"
  role             = var.lambda_role_arn
  handler          = "CodeIntegration.CodeIntegration.dump_event"
  timeout          = 3
  memory_size      = 128
  package_type     = "Zip"
  filename         = "../../compiled/code_integration.zip"
  source_code_hash = filebase64sha256("../../compiled/code_integration.zip")
  depends_on       = [aws_cloudwatch_log_group.log_group-DumpEvent]
  environment {
    variables = {
      username = var.ameliaUsername
      password = var.ameliaPassword
    }
  }
}

resource "aws_cloudwatch_log_group" "log_group-DumpEvent" {
  name              = "/aws/lambda/DumpEvent-${var.tags["environment"]}"
  retention_in_days = var.log_retention_days
}
