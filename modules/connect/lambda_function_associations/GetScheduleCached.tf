resource "aws_connect_lambda_function_association" "GetScheduleCached"{
  instance_id  = var.connect_instance_id
  function_arn = var.lambda_functions_map["GetScheduleCached"]
}
