resource "aws_connect_lambda_function_association"{
  instance_id  = "${aws_connect_instance.connect.id}"
  function_arn         = "${aws_lambda_function.retrieve_contact_information.id}"
  tags = local.tags
}
