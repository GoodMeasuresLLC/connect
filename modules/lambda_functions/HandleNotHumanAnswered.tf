resource "aws_lambda_function" "HandleNotHumanAnswered" {
  function_name    = "HandleNotHumanAnswered-${var.tags["environment"]}"
  description      = ""
  tags             = var.tags
  runtime          = "nodejs14.x"
  role             = var.lambda_role_arn
  handler          = "CodeIntegration.handleHumanNotAnswered"
  timeout          = 3
  memory_size      = 128
  package_type     = "Zip"
  filename         = "../../compiled/code_integration.zip"
  source_code_hash = filebase64sha256("../../compiled/code_integration.zip")
  depends_on       = [aws_cloudwatch_log_group.log_group-HandleNotHumanAnswered]
  environment {
    variables = {
      username = var.ameliaUsername
      password = var.ameliaPassword
    }
  }
}

resource "aws_cloudwatch_log_group" "log_group-HandleNotHumanAnswered" {
  name              = "/aws/lambda/HandleNotHumanAnswered-${var.tags["environment"]}"
  retention_in_days = var.log_retention_days
}
