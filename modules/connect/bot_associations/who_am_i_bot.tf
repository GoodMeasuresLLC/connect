resource "aws_connect_bot_association" "who_am_i_bot" {
  instance_id  = var.connect_instance_id
  lex_bot {
    lex_region = var.region
    name       = var.lex_bots_map["who_am_i_bot"]
  }
}
