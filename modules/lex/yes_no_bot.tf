# data "aws_lex_bot" "amelia_lex_bot" {
#   name = "AmeliaLexBot-${var.tags["environment"]}"
#   version = "$LATEST"
# }

resource "aws_lex_bot" "yes_no_bot" {
  name = "yes_no_bot_${var.tags["environment"]}"
  child_directed   = false
  process_behavior = "BUILD"
  voice_id         = "Joanna"

  abort_statement {
    message {
      content      = "Sorry, I am not able to assist at this time."
      content_type = "PlainText"
    }
  }

  clarification_prompt {
    max_attempts = 2
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
  name = "yes_intent_${var.tags["environment"]}"
  sample_utterances = [
    "YES",
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
  name = "no_intent_${var.tags["environment"]}"
  sample_utterances = [
  "no",
  "nope",
  "negatory",
  "I can't",
  "no thanks"
  ]
  fulfillment_activity {
    type = "ReturnIntent"
  }
}
