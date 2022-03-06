terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.4"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_connect_instance" "connect" {
  identity_management_type = "CONNECT_MANAGED"
  inbound_calls_enabled    = true
  instance_alias           = var.instance_alias
  outbound_calls_enabled   = true
  auto_resolve_best_voices_enabled = false
  contact_flow_logs_enabled = true
  early_media_enabled = true
}


module "lambda_function_associations" {
  source = "./lambda_function_associations"
  connect_instance_id = aws_connect_instance.connect.id
  lambda_functions_map = var.lambda_functions_map
  tags = var.tags
}


module "hours_of_operations" {
  source = "./hours_of_operations"
  connect_instance_id = aws_connect_instance.connect.id
  tags = var.tags
}

module "security_profiles" {
  source = "./security_profiles"
  connect_instance_id = aws_connect_instance.connect.id
  tags = var.tags
}
module "bot_associations" {
  source = "./bot_associations"
  connect_instance_id = aws_connect_instance.connect.id
  lex_bots_map = var.lex_bots_map
  region = "us-east-1"
}
