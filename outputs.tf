output "management_groups_display_name" {
  description = "Map of display_name values across all management_groups, keyed the same as var.management_groups"
  value       = { for k, v in azurerm_management_group.management_groups : k => v.display_name }
}
output "management_groups_name" {
  description = "Map of name values across all management_groups, keyed the same as var.management_groups"
  value       = { for k, v in azurerm_management_group.management_groups : k => v.name }
}
output "management_groups_parent_management_group_id" {
  description = "Map of parent_management_group_id values across all management_groups, keyed the same as var.management_groups"
  value       = { for k, v in azurerm_management_group.management_groups : k => v.parent_management_group_id }
}
output "management_groups_subscription_ids" {
  description = "Map of subscription_ids values across all management_groups, keyed the same as var.management_groups"
  value       = { for k, v in azurerm_management_group.management_groups : k => v.subscription_ids }
}
output "management_groups_tenant_scoped_id" {
  description = "Map of tenant_scoped_id values across all management_groups, keyed the same as var.management_groups"
  value       = { for k, v in azurerm_management_group.management_groups : k => v.tenant_scoped_id }
}

