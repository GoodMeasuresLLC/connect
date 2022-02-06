resource "aws_connect_lambda_function_association"{
  instance_id  = "${aws_connect_instance.connect.id}"
  function_arn         = "${aws_lambda_function.retrieve_development_contact_info.id}"
  tags = local.tags
}
