provider "aws" {
  region = var.region
  assume_role {
     role_arn  = var.iam_assume_role
  }
}

module "connect_instance" {
  source = "./modules/connect"
}

# module "connect_flows" {
#   source = "./modules/connect/flows"
# }

# module "connect_hours" {
#   source = "./modules/connect/hours"
# }

# module "lambda_associations" {
#   source = "./modules/connect/lambda_associations"
# }

# module "lambdas" {
#   source = "./modules/lambdas"
# }
