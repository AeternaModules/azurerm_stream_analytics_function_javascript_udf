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
      configuration_parameter = optional(bool)
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
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_udfs : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_udfs : (
        length(v.stream_analytics_job_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_udfs : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_udfs : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_udfs : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_udfs : (
        alltrue([for item in v.input : (contains(["any", "datetime", "array", "bigint", "float", "nvarchar(max)", "record"], item.type))])
      )
    ])
    error_message = "must be one of: any, datetime, array, bigint, float, nvarchar(max), record"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_udfs : (
        contains(["any", "datetime", "array", "bigint", "float", "nvarchar(max)", "record"], v.output.type)
      )
    ])
    error_message = "must be one of: any, datetime, array, bigint, float, nvarchar(max), record"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_udfs : (
        length(v.script) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

