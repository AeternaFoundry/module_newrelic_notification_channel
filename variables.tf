variable "notification_channels" {
  description = <<EOT
Map of notification_channels, attributes below
Required:
    - destination_id
    - name
    - product
    - type
    - property (block):
        - display_value (optional)
        - key (required)
        - label (optional)
        - value (required)
Optional:
    - account_id
    - active
    - timeouts (block):
        - create (optional)
        - update (optional)
EOT

  type = map(object({
    destination_id = string
    name           = string
    product        = string
    type           = string
    account_id     = optional(number)
    active         = optional(bool)
    property = list(object({
      display_value = optional(string)
      key           = string
      label         = optional(string)
      value         = string
    }))
    timeouts = optional(object({
      create = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.notification_channels : (
        length(v.property) >= 1
      )
    ])
    error_message = "Each property list must contain at least 1 items"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

