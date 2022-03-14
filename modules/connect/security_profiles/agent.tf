resource "aws_connect_security_profile" "agent" {
  instance_id  = "${var.connect_instance_id}"
  name         = "Agent"
  description  = "An agent is a user of the system that is focused on customer care and/or sales.  Their role is unlikely to be technical."
  tags = var.tags

  permissions = [
      "AccessMetrics",
      "BasicAgentAccess",
      "ContactSearch.View",
      "ListenCallRecordings",
      "OutboundCallAccess",
      "Users.View"
  ]
}
