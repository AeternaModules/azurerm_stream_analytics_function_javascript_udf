output "stream_analytics_function_javascript_udfs" {
  description = "All stream_analytics_function_javascript_udf resources"
  value       = azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs
}
output "stream_analytics_function_javascript_udfs_input" {
  description = "List of input values across all stream_analytics_function_javascript_udfs"
  value       = [for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : v.input]
}
output "stream_analytics_function_javascript_udfs_name" {
  description = "List of name values across all stream_analytics_function_javascript_udfs"
  value       = [for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : v.name]
}
output "stream_analytics_function_javascript_udfs_output" {
  description = "List of output values across all stream_analytics_function_javascript_udfs"
  value       = [for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : v.output]
}
output "stream_analytics_function_javascript_udfs_resource_group_name" {
  description = "List of resource_group_name values across all stream_analytics_function_javascript_udfs"
  value       = [for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : v.resource_group_name]
}
output "stream_analytics_function_javascript_udfs_script" {
  description = "List of script values across all stream_analytics_function_javascript_udfs"
  value       = [for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : v.script]
}
output "stream_analytics_function_javascript_udfs_stream_analytics_job_name" {
  description = "List of stream_analytics_job_name values across all stream_analytics_function_javascript_udfs"
  value       = [for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : v.stream_analytics_job_name]
}

