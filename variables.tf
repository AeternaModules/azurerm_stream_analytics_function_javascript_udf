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
  # --- Unconfirmed validation candidates, derived from azurerm_stream_analytics_function_javascript_udf's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: input.type
  #   condition: contains(["any", "datetime", "array", "bigint", "float", "nvarchar(max)", "record"], value)
  #   message:   must be one of: any, datetime, array, bigint, float, nvarchar(max), record
}

