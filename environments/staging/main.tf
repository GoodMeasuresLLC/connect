terraform {
  backend "s3" {
    bucket = "com.goodmeasures.connect-staging-terraform"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}

# gm-code-staging-cct
module "connect" {
  source = "../.."

  # items from ../common outputs
  # NOTE - to acquire these values run `terraform output` from the ../common dir
  account_id = var.account_id
  region = var.region
  vpc_id = var.vpc_id
  vpc_endpoint_id = var.vpc_endpoint_id
  lambda_role_name = "lambda-role-${var.environment}"
  instance_alias = var.instance_alias
  # items specific to this environment
  environment = var.environment
  # later, when you have queues in here
  queues_map = module.queues.queues_map
  contact_flows_map = module.contact_flows.contact_flows_map
  s3_deployment_bucket = var.s3_deployment_bucket
  amelia_lambda_environment = var.amelia_lambda_environment
}

# add later:
# module "queue_quick_connects" {
#   source = "./queue_quick_connects"
#   connect_instance_id = module.connect.connect_instance_id
#   users_map = module.users.users_map
#   flows_map = module.connect.flows_map
#   tags = {}
# }

module "contact_flows" {
  source = "./contact_flows"
  connect_instance_id = module.connect.connect_instance_id
  lambda_functions_map = module.connect.lambda_functions_map
  queues_map = module.queues.queues_map
  tags= {}
}

module "queues" {
  source = "./queues"
  connect_instance_id = module.connect.connect_instance_id
  hours_of_operations_map = module.connect.hours_of_operations_map
  contact_flows_map = module.contact_flows.contact_flows_map
  tags = {}
}
