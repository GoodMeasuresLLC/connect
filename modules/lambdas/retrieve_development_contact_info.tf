resource "aws_lambda_function" "retrieve_development_contact_info"{
  function_name="retrieve_development_contact_info-${var.tags["environment"]}"
  description  = ""
  tags         = var.tags
  runtime      ="ruby2.7"
  role         ="arn:aws:iam::201706955376:role/lambda_basic_execution"
  handler      ="get_contact.GetContact.process"
  timeout      = 3
  memory_size  = 128
  package_type ="Zip"
  filename     = "../../compiled/retrieve_development_contact_info.zip"
  source_code_hash = filebase64sha256("../../compiled/retrieve_development_contact_info.zip")
  depends_on = [aws_cloudwatch_log_group.log_group-retrieve_development_contact_info]
}

resource "aws_cloudwatch_log_group" "log_group-retrieve_development_contact_info" {
  name = "/aws/lambda/retrieve_development_contact_info-${var.tags["environment"]}"
  retention_in_days = var.log_retention_days
}

