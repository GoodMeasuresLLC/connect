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

module "flows" {
  source = "./modules/connect/flows"
  connect_instance_id = module.connect_instance.connect_instance_id
  lambda_functions_map = module.lambdas.lambda_functions_map
  queues_map = var.queues_map
  tags= local.tags
}
module "connect_hours" {
  source = "./modules/connect/hours"
  connect_instance_id = module.connect_instance.connect_instance_id
  tags = local.tags
}

module "security_profiles" {
  source = "./modules/connect/security_profile"
  connect_instance_id = module.connect_instance.connect_instance_id
  tags = local.tags
}


# module "lambda_associations" {
#   source = "./modules/connect/lambda_associations"
#   connect_instance_id = module.connect_instance.connect_instance_id
#   lambda_functions_map = module.lambdas.lambda_functions_map
#   tags = local.tags
# }

module "lambdas" {
  source = "./modules/lambdas"
  tags = local.tags
  log_retention_days = 7
}
