module "lambda_role" {
  source = "./lambda"
  lambda_role_name = var.lambda_role_name
  tags = var.tags
}
