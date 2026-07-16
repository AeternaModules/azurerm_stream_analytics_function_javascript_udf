output "stream_analytics_function_javascript_udfs_id" {
  description = "Map of id values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stream_analytics_function_javascript_udfs_input" {
  description = "Map of input values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.input if v.input != null && length(v.input) > 0 }
}
output "stream_analytics_function_javascript_udfs_name" {
  description = "Map of name values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stream_analytics_function_javascript_udfs_output" {
  description = "Map of output values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.output if v.output != null && length(v.output) > 0 }
}
output "stream_analytics_function_javascript_udfs_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "stream_analytics_function_javascript_udfs_script" {
  description = "Map of script values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.script if v.script != null && length(v.script) > 0 }
}
output "stream_analytics_function_javascript_udfs_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_function_javascript_udfs, keyed the same as var.stream_analytics_function_javascript_udfs"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_udf.stream_analytics_function_javascript_udfs : k => v.stream_analytics_job_name if v.stream_analytics_job_name != null && length(v.stream_analytics_job_name) > 0 }
}

