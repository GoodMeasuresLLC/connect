resource "aws_lambda_function" "retrieve_contact_information"{
  function_name="retrieve_contact_information-${var.tags["environment"]}"
  description  = ""
  tags         = var.tags
  runtime      ="ruby2.7"
  role         ="arn:aws:iam::201706955376:role/lambda_basic_execution"
  handler      ="get_contact.GetContact.process"
  timeout      = 3
  memory_size  = 128
  package_type ="Zip"
  filename     = "../../../compiled/retrieve_contact_information.zip"
  source_code_hash = filebase64sha256("../../../compiled/retrieve_contact_information.zip")
  depends_on = [aws_cloudwatch_log_group.log_group-retrieve_contact_information]
}

resource "aws_cloudwatch_log_group" "log_group-retrieve_contact_information" {
  name = "/aws/lambda/retrieve_contact_information-${var.tags["environment"]}"
  retention_in_days = var.log_retention_days
}

