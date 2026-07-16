output "management_groups_id" {
  description = "Map of id values across all management_groups, keyed the same as var.management_groups"
  value       = { for k, v in azurerm_management_group.management_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "management_groups_display_name" {
  description = "Map of display_name values across all management_groups, keyed the same as var.management_groups"
  value       = { for k, v in azurerm_management_group.management_groups : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "management_groups_name" {
  description = "Map of name values across all management_groups, keyed the same as var.management_groups"
  value       = { for k, v in azurerm_management_group.management_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "management_groups_parent_management_group_id" {
  description = "Map of parent_management_group_id values across all management_groups, keyed the same as var.management_groups"
  value       = { for k, v in azurerm_management_group.management_groups : k => v.parent_management_group_id if v.parent_management_group_id != null && length(v.parent_management_group_id) > 0 }
}
output "management_groups_subscription_ids" {
  description = "Map of subscription_ids values across all management_groups, keyed the same as var.management_groups"
  value       = { for k, v in azurerm_management_group.management_groups : k => v.subscription_ids if v.subscription_ids != null && length(v.subscription_ids) > 0 }
}
output "management_groups_tenant_scoped_id" {
  description = "Map of tenant_scoped_id values across all management_groups, keyed the same as var.management_groups"
  value       = { for k, v in azurerm_management_group.management_groups : k => v.tenant_scoped_id if v.tenant_scoped_id != null && length(v.tenant_scoped_id) > 0 }
}

