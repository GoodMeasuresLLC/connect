# data "aws_lex_bot" "amelia_lex_bot" {
#   name = "AmeliaLexBot-${var.tags["environment"]}"
#   version = "$LATEST"
# }

resource "aws_lex_bot" "yes_no_with_preference_bot" {
  name = "yes_no_with_preference_bot"
  child_directed   = false
  process_behavior = "BUILD"
  voice_id         = "Joanna"

  abort_statement {
    message {
      content      = "Abort path"
      content_type = "PlainText"
    }
  }

  clarification_prompt {
    max_attempts = 5
    message {
      content      = "please say either yes or no, or tell us when you would prefer"
      content_type = "PlainText"
    }
  }

  intent {
    intent_name    = aws_lex_intent.indicate_preference_intent.name
    intent_version = "$LATEST"
  }
  intent {
    intent_name    = aws_lex_intent.wait_intent.name
    intent_version = "$LATEST"
  }
  intent {
    intent_name    = aws_lex_intent.no_intent.name
    intent_version = "$LATEST"
  }
  intent {
    intent_name    = aws_lex_intent.yes_intent.name
    intent_version = "$LATEST"
  }
  intent {
    intent_name    = aws_lex_intent.repeat_intent.name
    intent_version = "$LATEST"
  }
}

resource "aws_lex_intent" "indicate_preference_intent" {
  name = "indicate_preference_intent"
  fulfillment_activity {
    type = "ReturnIntent"
  }
  sample_utterances = [
    "no I would prefer a different time",
    "no I would prefer {TimeOfDay}",
    "no I'd prefer {TimeOfDay}",
    "I would prefer a different time",
    "I would prefer {TimeOfDay}",
    "I'd prefer {TimeOfDay}",
    "I would prefer in the {TimeOfDay}",
    "I would prefer an {TimeOfDay}",
    "I would prefer around {TimeOfDay}",
    "I'd like a different time",
    "do you have something in the {TimeOfDay}",
    "do you have something around {TimeOfDay}",
    "actually i'd prefer around {TimeOfDay}",
    "i'd prefer around {TimeOfDay}",
  ]
  slot {
    description = "preferred-time-of-day"
    name        = "TimeOfDay"
    priority    = 2

    sample_utterances = [
      "do you have something in the {TimeOfDay}",
      "do you have something around {TimeOfDay}",
      "around {TimeOfDay}",
      "in the {TimeOfDay}",
      "i'd prefer around {TimeOfDay}",
      "i'd prefer in the {TimeOfDay}",
      "actually i'd prefer around {TimeOfDay}",
    ]
    value_elicitation_prompt {
      max_attempts = 1

      message {
        content      = "Tell me if you prefer morning, afternoons or evenings?"
        content_type = "PlainText"
      }
    }
    slot_constraint   = "Required"
    slot_type         = "AMAZON.TIME"
  }
}

# so reference these values as
#  $.Lex.Slots.StartTime
#  $.Lex.Slots.EndTime
# in your code.
resource "aws_lex_intent" "between_intent" {
  name = "between_intent"
  sample_utterances = [
    "between {StartTime} and {EndTime}",
  ]
  slot {
    description = "preferred-time-of-day"
    name        = "StartTime"
    priority    = 1
    slot_constraint   = "Required"
    slot_type         = "AMAZON.TIME"
  }
  slot {
    description = "preferred-time-of-day"
    name        = "EndTime"
    priority    = 1
    slot_constraint   = "Required"
    slot_type         = "AMAZON.TIME"
  }

  fulfillment_activity {
    type = "ReturnIntent"
  }
}

resource "aws_lex_slot_type" "period_of_day" {
  name = "PeriodOfDay"

  enumeration_value {
    synonyms = [
      "Lirium",
      "Martagon",
    ]

    value = "lilies"
  }
}
