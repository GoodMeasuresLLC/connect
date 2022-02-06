resource "aws_connect_contact_flow" "_03_AHEAD_After_Hours_Spanish" {
  instance_id  = "${aws_connect_instance.connect.id}"
  name         = "03 AHEAD After Hours Spanish"
  type         = "CONTACT_FLOW"
  description  = "Ahead After hours (Spanish)"
  filename     = "_03_AHEAD_After_Hours_Spanish.json"
  content_hash = filebase64sha256("_03_AHEAD_After_Hours_Spanish.json")
  tags = local.tags
}
