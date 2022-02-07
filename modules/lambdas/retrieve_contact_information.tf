resource "aws_lambda_function" "retrieve_contact_information"{
  function_name="retrieve_contact_information"
  description  = ""
  tags         = var.tags
  runtime      ="ruby2.5"
  role         ="arn:aws:iam::201706955376:role/lambda_basic_execution"
  handler      ="get_contact.GetContact.process"
  timeout      = 3
  memory_size  = 128
  package_type ="Zip"
  layers = [aws_lambda_layer_version.layers.arn]
  filename     = "../../compiled/retrieve_contact_information.zip"
  source_code_hash = filebase64sha256("../../compiled/retrieve_contact_information.zip")
}

  depends_on = [aws_cloudwatch_log_group.log_group]
}

resource "aws_cloudwatch_log_group" "log_group" {
  name = "/aws/lambda/retrieve_contact_information"
  retention_in_days = var.log_retention_days
}

