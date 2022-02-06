resource "aws_connect_contact_flow" "_00_MainPatient_Flow_In_Open" {
  instance_id  = var.connect_instance_id
  name         = "00 MainPatient Flow - In (Open)"
  type         = "CONTACT_FLOW"
   filename     = "_00_MainPatient_Flow_In_Open.json"
  content_hash = filebase64sha256("_00_MainPatient_Flow_In_Open.json")
  tags = var.tags
}
