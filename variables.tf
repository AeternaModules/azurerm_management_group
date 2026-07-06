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
        v.subscription_ids == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.subscription_ids)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_management_group's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ManagementGroupName] !ok
  # path: name
  #   source:    [from validate.ManagementGroupName] !matched
  # path: parent_management_group_id
  #   source:    [from commonids.ValidateManagementGroupID] !ok
  # path: parent_management_group_id
  #   source:    [from commonids.ValidateManagementGroupID] err != nil
}

