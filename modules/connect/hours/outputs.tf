output "hours_of_operations_map" {
  value = {
    "good_measures" = aws_connect_hours_of_operation.good_measures.hours_of_operation_id,
    "onduo_walgreens" = aws_connect_hours_of_operation.onduo_walgreens.hours_of_operation_id,
    "good_measures_corporate" = aws_connect_hours_of_operation.good_measures_corporate.hours_of_operation_id,
    "ahead_study" = aws_connect_hours_of_operation.ahead_study.hours_of_operation_id,
    "biotel_care" = aws_connect_hours_of_operation.biotel_care.hours_of_operation_id,
    "basic_hours" = aws_connect_hours_of_operation.basic_hours.hours_of_operation_id
  }
}
