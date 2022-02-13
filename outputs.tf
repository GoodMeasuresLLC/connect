output "connect_instance_id" {
  value = module.connect.connect_instance_id
}

output "hours_of_operations_map" {
  value = module.connect.hours_of_operations_map
}

output "security_profiles_map" {
  value = module.connect.security_profiles_map
}

output "lambda_functions_map" {
  value = module.lambda_functions.lambda_functions_map
}

output "lex_bots_map" {
  value = module.lex.lex_bots_map
}
