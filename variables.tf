variable "stream_analytics_function_javascript_udfs" {
  description = <<EOT
Map of stream_analytics_function_javascript_udfs, attributes below
Required:
    - name
    - resource_group_name
    - script
    - stream_analytics_job_name
    - input (block):
        - configuration_parameter (optional)
        - type (required)
    - output (block):
        - type (required)
EOT

  type = map(object({
    name                      = string
    resource_group_name       = string
    script                    = string
    stream_analytics_job_name = string
    input = object({
      configuration_parameter = optional(bool, false)
      type                    = string
    })
    output = object({
      type = string
    })
  }))
}

