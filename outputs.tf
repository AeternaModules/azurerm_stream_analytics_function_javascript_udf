output "stream_analytics_function_javascript_udfs_input" {
  description = "Map of input values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.input }
}
output "stream_analytics_function_javascript_udfs_name" {
  description = "Map of name values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.name }
}
output "stream_analytics_function_javascript_udfs_output" {
  description = "Map of output values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.output }
}
output "stream_analytics_function_javascript_udfs_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.resource_group_name }
}
output "stream_analytics_function_javascript_udfs_script" {
  description = "Map of script values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.script }
}
output "stream_analytics_function_javascript_udfs_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.stream_analytics_job_name }
}

