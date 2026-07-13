variable "management_groups" {
  description = <<EOT
Map of management_groups, attributes below
Optional:
    - display_name
    - name
    - parent_management_group_id
    - subscription_ids
EOT

  type = map(object({
    display_name               = optional(string)
    name                       = optional(string)
    parent_management_group_id = optional(string)
    subscription_ids           = optional(set(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.management_groups : (
        v.subscription_ids == null || (alltrue([for x in v.subscription_ids : can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", x))]))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

