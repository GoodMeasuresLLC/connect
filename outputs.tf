output "connect_instance_id" {
  value = module.connect_instance.connect_instance_id
}

output "hours_of_operations_map" {
  value = module.hours_of_operations.hours_of_operations_map
}

output "security_profiles_map" {
  value = module.security_profiles.security_profiles_map
}

output "lambda_functions_map" {
  value = module.lambda_functions.lambda_functions_map
}
