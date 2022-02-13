output "lex_bots_map" {
  value = {
      "amelia_lex_bot" = aws_lex_bot.amelia_lex_bot.name
  }
}
