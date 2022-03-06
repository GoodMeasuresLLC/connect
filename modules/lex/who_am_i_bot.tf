# data "aws_lex_bot" "amelia_lex_bot" {
#   name = "AmeliaLexBot-${var.tags["environment"]}"
#   version = "$LATEST"
# }

resource "aws_lex_bot" "who_am_i_bot" {
  name = "who_am_i_bot"
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
      content      = "Please say one of 'the patient', 'voicemail', 'someone else' "
      content_type = "PlainText"
    }
  }

  intent {
    intent_name    = aws_lex_intent.voicemail_intent.name
    intent_version = "$LATEST"
  }

  intent {
    intent_name    = aws_lex_intent.patient_intent.name
    intent_version = "$LATEST"
  }
  intent {
    intent_name    = aws_lex_intent.non_patient_intent.name
    intent_version = "$LATEST"
  }
}

resource "aws_lex_intent" "voicemail_intent" {
  name = "voicemail_intent"
  sample_utterances = [
  "answering machine",
  "im an answering machine",
  "voicemail"
  ]
  fulfillment_activity {
    type = "ReturnIntent"
  }
}

resource "aws_lex_intent" "patient_intent" {
  name = "patient_intent"
  sample_utterances = [
  "its me",
  "patient",
  "the patient",
  "im the patient"
  ]
  fulfillment_activity {
    type = "ReturnIntent"
  }
}

resource "aws_lex_intent" "non_patient_intent" {
  name = "non_patient_intent"
  sample_utterances = [
  "someone else",
  "the husband"
  ]
  fulfillment_activity {
    type = "ReturnIntent"
  }
}

