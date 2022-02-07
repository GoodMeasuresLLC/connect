resource "aws_connect_lambda_function_association"{
  instance_id  = "${var.connect_instance_id}"
  function_arn         = "${aws_lambda_function.checkholiday.id}"
  tags = var.tags
}
