variable "iam_assume_role" {
  description = "role assumed for executing terraform changes"
  default = null
}

##########################################################################
# items from ./environment/common outputs
##########################################################################
variable "account_id" {
  description = "AWS account id"
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
variable "instance_alias" {
  description = "Name for this instance"
}

##########################################################################
# items specific to the active environment
##########################################################################
variable "environment" {
  description = "Name for this environment (eg development)"
}

variable "queues_map" {
}
