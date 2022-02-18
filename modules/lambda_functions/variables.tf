variable "log_retention_days" {}
variable "s3_deployment_bucket" {}
variable "amelia_lambda_environment" { type = map(any) }
variable "tags" {}
variable "lambda_role_arn" {}
variable "region" {}
variable "codeHostname" {}
variable "ameliaUsername" {}
variable "ameliaPassword" {}
