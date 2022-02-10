resource "aws_connect_queue" "cvs_biotel_care_cvs_bio_grtng" {
  description  = "CVS-BioTel Care (CVS-BIO GRTNG)"
  hours_of_operation_id = var.hours_of_operations_map["biotel_care"]
  instance_id  = var.connect_instance_id
  name         = "CVS-BioTel Care (CVS-BIO GRTNG)"
  outbound_caller_config {
    outbound_caller_id_name="GM-CVS-BioTel Care"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
