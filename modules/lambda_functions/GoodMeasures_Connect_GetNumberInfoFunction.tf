resource "aws_lambda_function" "goodmeasures_connect_getnumberinfofunction"{
  function_name="GoodMeasures_Connect_GetNumberInfoFunction-${var.tags["environment"]}"
  description  = ""
  tags         = var.tags
  runtime      ="python3.7"
  role         ="arn:aws:iam::201706955376:role/lambda_basic_execution"
  handler      ="lambda_function.lambda_handler"
  timeout      = 3
  memory_size  = 128
  package_type ="Zip"
  filename     = "../../compiled/goodmeasures_connect_getnumberinfofunction.zip"
  source_code_hash = filebase64sha256("../../compiled/goodmeasures_connect_getnumberinfofunction.zip")
  depends_on = [aws_cloudwatch_log_group.log_group-goodmeasures_connect_getnumberinfofunction]
}

resource "aws_cloudwatch_log_group" "log_group-goodmeasures_connect_getnumberinfofunction" {
  name = "/aws/lambda/GoodMeasures_Connect_GetNumberInfoFunction-${var.tags["environment"]}"
  retention_in_days = var.log_retention_days
}

