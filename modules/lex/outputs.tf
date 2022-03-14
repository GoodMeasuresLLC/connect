output "lex_bots_map" {
  value = {
      "amelia_lex_bot" = aws_lex_bot.amelia_lex_bot.name
      "yes_no_bot" = aws_lex_bot.yes_no_bot.name
      "who_am_i_bot" = aws_lex_bot.who_am_i_bot.name
      "wait_bot" = aws_lex_bot.wait_bot.name
      "preference_bot" = aws_lex_bot.yes_no_with_preference_bot.name
  }
}
