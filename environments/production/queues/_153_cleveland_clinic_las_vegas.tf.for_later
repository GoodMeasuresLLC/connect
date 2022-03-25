resource "aws_connect_queue" "_153_cleveland_clinic_las_vegas" {
  description  = "AHEAD-Cleveland Clinic Lou Ruvo Center for Brain Health Las Vegas"
  hours_of_operation_id = var.hours_of_operations_map["ahead_study"]
  instance_id  = var.connect_instance_id
  name         = "153 Cleveland Clinic Las Vegas"
  outbound_caller_config {
    outbound_caller_id_name="AHEAD Study"
    outbound_caller_id_number_id="c64ce101-bd6b-40c6-aaa7-2ff36bd41548"
  }
  tags = var.tags
}
