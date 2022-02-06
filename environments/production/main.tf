terraform {
  backend "s3" {
    bucket = "com.goodmeasures.connect-production-terraform"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}

# gm-code-cct
module "connect" {
  source = "../.."

  # items from ../common outputs
  # NOTE - to acquire these values run `terraform output` from the ../common dir
  account_id = var.account_id
  name_prefix = var.name_prefix
  region = var.region
  vpc_id = var.vpc_id
  vpc_endpoint_id = var.vpc_endpoint_id
  subnet_ids = var.subnet_ids
  lambda_role_arn = var.lambda_role_arn

  # items specific to this environment
  environment = var.environment
}
