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
  region = var.region
  account_id = var.account_id
  environment = var.environment
  vpc_id = var.vpc_id
  vpc_endpoint_id = var.vpc_endpoint_id
  lambda_role_arn = var.lambda_role_arn
  instance_alias = var.instance_alias
}

# module "connect_flows" {
#   source = "./modules/connect/flows"
# }
# module "connect_flows" {
#   source = "./modules/connect/flows"
#   connect_instance_id = module.connect_instance.connect_instance_id
#   hours_of_operations_map = local.connect_hours.hours_of_operations_map
#   security_profiles_map = local.security_profiles.security_profiles_map
#   lambda_functions_map = module.lambdas.lambda_functions_map
#   tags= local.tags
# }
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

# module "lambdas" {
#   source = "./modules/lambdas"
#   tags = local.tags
# }
