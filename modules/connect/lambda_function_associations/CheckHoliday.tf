resource "aws_connect_lambda_function_association" "checkholiday"{
  instance_id  = var.connect_instance_id
  function_arn         = var.lambda_functions_map["checkholiday"]

}
