output "management_groups" {
  description = "All management_group resources"
  value       = azurerm_management_group.management_groups
}
output "management_groups_display_name" {
  description = "List of display_name values across all management_groups"
  value       = [for k, v in azurerm_management_group.management_groups : v.display_name]
}
output "management_groups_name" {
  description = "List of name values across all management_groups"
  value       = [for k, v in azurerm_management_group.management_groups : v.name]
}
output "management_groups_parent_management_group_id" {
  description = "List of parent_management_group_id values across all management_groups"
  value       = [for k, v in azurerm_management_group.management_groups : v.parent_management_group_id]
}
output "management_groups_subscription_ids" {
  description = "List of subscription_ids values across all management_groups"
  value       = [for k, v in azurerm_management_group.management_groups : v.subscription_ids]
}
output "management_groups_tenant_scoped_id" {
  description = "List of tenant_scoped_id values across all management_groups"
  value       = [for k, v in azurerm_management_group.management_groups : v.tenant_scoped_id]
}

