# data "aws_lex_bot" "amelia_lex_bot" {
#   name = "AmeliaLexBot-${var.tags["environment"]}"
#   version = "$LATEST"
# }

resource "aws_lex_bot" "amelia_lex_bot" {
  name = "AmeliaLexBot_${var.tags["environment"]}"
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
      content      = "I didn't understand you, what would you like to do?"
      content_type = "PlainText"
    }
  }

  intent {
    intent_name    = aws_lex_intent.welcome_intent.name
    intent_version = "$LATEST"
  }

  intent {
    intent_name    = aws_lex_intent.catchall_intent.name
    intent_version = "$LATEST"
  }


}

resource "aws_lex_intent" "welcome_intent" {
  name = "WelcomeIntent_${var.tags["environment"]}"
  sample_utterances = [
    "Hello"
  ]
  fulfillment_activity {
    type = "CodeHook"
    code_hook {
      message_version = "1.0"
      uri = var.lambda_functions_map["AmeliaGatewayAmazonLex"]
    }
  }
}

resource "aws_lex_intent" "catchall_intent" {
  name = "CatchallIntent_${var.tags["environment"]}"
  fulfillment_activity {
    type = "CodeHook"
    code_hook {
      message_version = "1.0"
      uri = var.lambda_functions_map["AmeliaGatewayAmazonLex"]
    }
  }
  parent_intent_signature = "AMAZON.FallbackIntent"
}


resource "aws_lex_bot_alias" "amelia_lex_bot" {
  bot_name    = aws_lex_bot.amelia_lex_bot.name
  bot_version = "$LATEST"
  name        = "amelia_lex_bot"
  conversation_logs {
    iam_role_arn = var.lex_role_arn
    log_settings {
      destination = "CLOUDWATCH_LOGS"
      log_type    = "TEXT"
      resource_arn = aws_cloudwatch_log_group.log_group-amelia_lex_bot.arn
    }
    # log_settings {
    #   destination = "CLOUDWATCH_LOGS"
    #   log_type    = "AUDIO"
    #   resource_arn = aws_cloudwatch_log_group.log_group-amelia_lex_bot.arn
    # }
  }
}


resource "aws_cloudwatch_log_group" "log_group-amelia_lex_bot" {
  name = "/aws/lex/amelia_lex_bot-${var.tags["environment"]}"
  retention_in_days = 7
}

