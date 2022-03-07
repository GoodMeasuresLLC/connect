# data "aws_lex_bot" "amelia_lex_bot" {
#   name = "AmeliaLexBot-${var.tags["environment"]}"
#   version = "$LATEST"
# }

resource "aws_lex_bot" "wait_bot" {
  name = "wait_bot"
  child_directed   = false
  process_behavior = "BUILD"
  voice_id         = "Joanna"

  abort_statement {
    message {
      content      = "Aborting"
      content_type = "PlainText"
    }
  }

  # we give a prompt with an intentionally long silence here, relying on the
  # bargein capability to allow the user to interrupt at any time.
  # note that you must set the session attribute in connect:
  # x-amz-lex:barge-in-enabled:*:*
  # to "true"
  # to enable barge for lex bots
  clarification_prompt {
    max_attempts = 5
    message {
      content      = "<speak>I'm still waiting<break time='10s'/><break time='10s'/><break time='10s'/><break time='10s'/><break time='10s'/><break time='10s'/><break time='10s'/><break time='10s'/></speak>"
      content_type = "SSML"
    }
  }

  intent {
    intent_name    = aws_lex_intent.customer_returned_intent.name
    intent_version = "$LATEST"
  }

  intent {
    intent_name    = aws_lex_intent.fallback_intent.name
    intent_version = "$LATEST"
  }
}

resource "aws_lex_intent" "customer_returned_intent" {
  name = "customer_returned_intent"
  sample_utterances = [
  "i'm back",
  "back",
  "ready",
  "ok",
  "ok now"
  ]
  fulfillment_activity {
    type = "ReturnIntent"
  }
}

resource "aws_lex_intent" "fallback_intent" {
  name = "fallback_intent"
  parent_intent_signature = "AMAZON.FallbackIntent"
  fulfillment_activity {
    type = "ReturnIntent"
  }
}
