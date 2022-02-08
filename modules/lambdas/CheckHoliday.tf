resource "aws_lambda_function" "checkholiday"{
  function_name="CheckHoliday-${var.tags["environment"]}"
  description  = ""
  tags         = var.tags
  runtime      ="python3.7"
  role         ="arn:aws:iam::201706955376:role/lambda_basic_execution"
  handler      ="lambda_function.lambda_handler"
  timeout      = 3
  memory_size  = 128
  package_type ="Zip"
  filename     = "../../compiled/checkholiday.zip"
  source_code_hash = filebase64sha256("../../compiled/checkholiday.zip")
  depends_on = [aws_cloudwatch_log_group.log_group-checkholiday]
}

resource "aws_cloudwatch_log_group" "log_group-checkholiday" {
  name = "/aws/lambda/CheckHoliday-${var.tags["environment"]}"
  retention_in_days = var.log_retention_days
}

