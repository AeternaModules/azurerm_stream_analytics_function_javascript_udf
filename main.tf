resource "azurerm_stream_analytics_function_javascript_udf" "stream_analytics_function_javascript_udfs" {
  for_each = var.stream_analytics_function_javascript_udfs

  name                      = each.value.name
  resource_group_name       = each.value.resource_group_name
  script                    = each.value.script
  stream_analytics_job_name = each.value.stream_analytics_job_name

  input {
    configuration_parameter = each.value.input.configuration_parameter
    type                    = each.value.input.type
  }

  output {
    type = each.value.output.type
  }
}

