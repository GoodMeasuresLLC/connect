resource "aws_connect_lambda_function_association"{
  instance_id  = "${aws_connect_instance.connect.id}"
  function_arn         = "${aws_lambda_function.TranscriptCreate_Transcription_Table_Item.id}"
  tags = local.tags
}
