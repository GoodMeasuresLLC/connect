output "connect_instance_id" {
  value = module.connect_instance.connect_instance_id
}

output "hours_map" {
  value = module.connect_hours.hours_of_operations_map
}

output "security_profiles_map" {
  value = module.security_profiles.security_profiles_map
}
