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
    input = list(object({
      configuration_parameter = optional(bool) # Default: false
      type                    = string
    }))
    output = object({
      type = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_udfs : (
        length(v.input) >= 1
      )
    ])
    error_message = "Each input list must contain at least 1 items"
  }
}

