resource "aws_connect_queue" "biotel_care_bio_grtng" {
  description  = "BioTel Care (BIO GRTNG)"
  hours_of_operation_id = var.hours_of_operations_map["biotel_care"]
  instance_id  = var.connect_instance_id
  name         = "BioTel Care (BIO GRTNG)"
  outbound_caller_config {
    outbound_caller_id_name="GM-BioTel"
    outbound_flow_id=var.flows_map["_0x_gm_outbound"]
  }
  tags = var.tags
}
