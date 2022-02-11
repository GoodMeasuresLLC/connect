##########################################################################
# items specific to the active environment
##########################################################################
variable "environment" {
  description = "Name for this environment (eg development)"
  default = "staging"
}

variable "instance_alias" {
  description = "Name for this instance"
  default = "gm-code-staging-cct"
}
variable "account_id" {
  description = "organization account id"
}

variable "region" {
  description = "Default region for the application stack (eg us-east-1)"
}
variable "vpc_id" {
  description = "Instance id of the vpc used by this application.  Acquired from outputs of common environment."
}
variable "vpc_endpoint_id" {
  description = "Instance id of the vpc endpoint used by this application.  Acquired from outputs of common environment."
}

variable "lambda_role_arn" {
  description = "arn for the default lambda function role"
}

variable "s3_deployment_bucket" {
  description = "S3 bucket where the .ZIP file for the Amelia integration resides"
}
