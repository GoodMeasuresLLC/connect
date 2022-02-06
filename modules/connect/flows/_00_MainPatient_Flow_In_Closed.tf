resource "aws_connect_contact_flow" "_00_MainPatient_Flow_In_Closed" {
  instance_id  = var.connect_instance_id
  name         = "00 MainPatient Flow - In (Closed)"
  type         = "CONTACT_FLOW"
   filename     = "_00_MainPatient_Flow_In_Closed.json"
  content_hash = filebase64sha256("_00_MainPatient_Flow_In_Closed.json")
  tags = var.tags
}
