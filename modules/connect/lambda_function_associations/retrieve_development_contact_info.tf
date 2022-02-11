resource "aws_connect_lambda_function_association" "retrieve_development_contact_info"{
  instance_id  = var.connect_instance_id
  function_arn         = var.lambda_functions_map["retrieve_development_contact_info"]

}
