resource "aws_connect_lambda_function_association"{
  instance_id  = var.connect_instance_id
  function_arn         = "${aws_lambda_function.TranscriptCreate_Transcription_Table_Item.id}"
  tags = var.tags
}
