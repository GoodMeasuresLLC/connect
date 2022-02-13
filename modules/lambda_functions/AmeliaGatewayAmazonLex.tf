resource "aws_lambda_function" "AmeliaGatewayAmazonLex"{
  function_name="AmeliaGatewayAmazonLex-${var.tags["environment"]}"
  description  = ""
  tags         = var.tags
  runtime      ="java11"
  role         = var.lambda_role_arn
  handler      ="net.ipsoft.amelia.gateway.aws.lambda.lex.AmeliaGatewayApiLambdaLex::handleRequest"
  timeout      = 3
  memory_size  = 128
  package_type ="Zip"
  s3_bucket    =var.s3_deployment_bucket
  s3_key       ="amelia-lambda-lex-1.0.1.zip"
  depends_on = [aws_cloudwatch_log_group.log_group-AmeliaGatewayAmazonLex]
  environment {
    variables = var.amelia_lambda_environment
  }
}

resource "aws_cloudwatch_log_group" "log_group-AmeliaGatewayAmazonLex" {
  name = "/aws/lambda/AmeliaGatewayAmazonLex-${var.tags["environment"]}"
  retention_in_days = var.log_retention_days
}

