provider "aws" {
  region = var.region
  assume_role {
     role_arn  = var.iam_assume_role
  }
}

locals {
  tags = {
    environment = var.environment,
    project = "connect"
  }
}

module "connect" {
  tags = local.tags
  source = "./modules/connect"
  instance_alias = var.instance_alias
  lambda_functions_map =  module.lambda_functions.lambda_functions_map
  lex_bots_map =  module.lex.lex_bots_map
}


module "lambda_functions" {
  source                   = "./modules/lambda_functions"
  s3_deployment_bucket     = var.s3_deployment_bucket
  tags                     = local.tags
  log_retention_days       = 7
  amelia_lambda_environment = var.amelia_lambda_environment
}

module "lex" {
  source                   = "./modules/lex"
  lambda_functions_map     = module.lambda_functions.lambda_functions_map
  tags                     = local.tags
}
