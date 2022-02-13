output "connect_instance_id" {
  value = aws_connect_instance.connect.id
}

output "hours_of_operations_map" {
  value = module.hours_of_operations.hours_of_operations_map
}

output "security_profiles_map" {
  value = module.security_profiles.security_profiles_map
}
