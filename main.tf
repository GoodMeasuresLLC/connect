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

module "connect_hours" {
  source = "./modules/connect/hours"
  connect_instance_id = module.connect_instance.connect_instance_id
  tags= local.tags
}
locals {
  fred = module.connect_hours.hours_of_operation_map
}
# module "lambda_associations" {
#   source = "./modules/connect/lambda_associations"
# }

# module "lambdas" {
#   source = "./modules/lambdas"
# }
