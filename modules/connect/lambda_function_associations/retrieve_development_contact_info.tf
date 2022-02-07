resource "aws_connect_lambda_function_association"{
  instance_id  = var.connect_instance_id
  function_arn         = var.lambda_functions_map["retrieve_development_contact_info"]
  tags = var.tags
}
