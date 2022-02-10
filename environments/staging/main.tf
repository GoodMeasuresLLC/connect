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
  lambda_role_arn = var.lambda_role_arn
  instance_alias = var.instance_alias
  # items specific to this environment
  environment = var.environment
  # later, when you have queues in here
  queues_map = module.queues.queues_map
}

# add later:
# module "queue_quick_connects" {
#   source = "./queue_quick_connects"
#   connect_instance_id = module.connect_instance.connect_instance_id
#   queues_map = module.queues.queues_map
#   users_map = module.users.users_map
#   flows_map = module.connect_instance.flows_map
#   tags = {}
# }

module "queues" {
  source = "./queues"
  connect_instance_id = module.connect.connect_instance_id
  hours_of_operations_map = module.connect.hours_of_operations_map
  flows_map = module.connect.flows_map
  tags = {}
}

# module "connect_queues" {
#   source = "./queues"
#   connect_instance_id = module.connect.connect_instance_id
#   tags= local.tags
# }
