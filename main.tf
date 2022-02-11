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

module "connect_instance" {
  source = "./modules/connect"
  instance_alias = var.instance_alias
}

module "hours_of_operations" {
  source = "./modules/connect/hours_of_operations"
  connect_instance_id = module.connect_instance.connect_instance_id
  tags = local.tags
}

module "security_profiles" {
  source = "./modules/connect/security_profiles"
  connect_instance_id = module.connect_instance.connect_instance_id
  tags = local.tags
}

module "lambda_functions" {
  source = "./modules/lambda_functions"
  connect_instance_id = module.connect_instance.connect_instance_id
  tags = local.tags
  log_retention_days = 7
}

module "lambda_function_associations" {
  source = "./modules/connect/lambda_function_associations"
  connect_instance_id = module.connect_instance.connect_instance_id
  lambda_functions_map = module.lambda_functions.lambda_functions_map
  tags = local.tags
}
