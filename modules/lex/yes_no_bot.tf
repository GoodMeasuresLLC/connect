# data "aws_lex_bot" "amelia_lex_bot" {
#   name = "AmeliaLexBot-${var.tags["environment"]}"
#   version = "$LATEST"
# }

resource "aws_lex_bot" "yes_no_bot" {
  name = "yes_no_bot"
  child_directed   = false
  process_behavior = "BUILD"
  voice_id         = "Joanna"

  abort_statement {
    message {
      content      = "I'm only a bot, let me transfer you to a human."
      content_type = "PlainText"
    }
  }

  clarification_prompt {
    max_attempts = 3
    message {
      content      = "Please say either yes or no"
      content_type = "PlainText"
    }
  }

  intent {
    intent_name    = aws_lex_intent.yes_intent.name
    intent_version = "$LATEST"
  }

  intent {
    intent_name    = aws_lex_intent.no_intent.name
    intent_version = "$LATEST"
  }


}

resource "aws_lex_intent" "yes_intent" {
  name = "yes_intent"
  sample_utterances = [
    "YES",
    "yes please",
    "yes I can",
    "yes that works",
    "that works",
    "sure fine",
    "fine by me",
    "YEAH",
    "YUP",
    "OKAY",
    "YEE",
    "YEP",
    "YEA",
    "YA",
    "YESSIR",
    "YOU BET",
    "ALRIGHT",
    "ALRIGHTY",
    "ABSOLUTELY",
    "OF COURSE",
    "GLADLY",
    "SOUNDS GOOD",
    "WILL DO",
    "NO PROBLEM",
    "AYE AYE",
    "ROGER",
    "TOTALLY",
    "DEFINITELY"
  ]
  fulfillment_activity {
    type = "ReturnIntent"
  }
}

resource "aws_lex_intent" "no_intent" {
  name = "no_intent"
  sample_utterances = [
  "no",
  "nope",
  "negatory",
  "I can't",
  "no I can't",
  "no I can't make that",
  "I have another appointment",
  "no I'm busy",
  "no thanks"
  ]
  fulfillment_activity {
    type = "ReturnIntent"
  }
}
