output "security_profiles_map" {
  value = {
    "new_hire" = aws_connect_security_profile.new_hire.security_profile_id,
    "callcentermanager" = aws_connect_security_profile.callcentermanager.security_profile_id,
    "qualityanalyst" = aws_connect_security_profile.qualityanalyst.security_profile_id,
    "agent" = aws_connect_security_profile.agent.security_profile_id,
    "admin" = aws_connect_security_profile.admin.security_profile_id
  }
}
