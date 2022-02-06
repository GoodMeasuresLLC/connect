terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

locals {
  tags = {
    environment = var.environment,
    project = "connect"
  }
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
  early_media_enabled = false
  tags = local.tags
}
