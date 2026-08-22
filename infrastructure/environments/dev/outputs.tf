output "resource_group_name" {
  description = "Name of the Azure resource group."
  value       = module.resource_group.name
}

output "resource_group_location" {
  description = "Azure region of the resource group."
  value       = module.resource_group.location
}
output "vnet_name" {
  description = "Name of the virtual network."
  value       = module.network.vnet_name
}

output "vnet_id" {
  description = "ID of the virtual network."
  value       = module.network.vnet_id
}

output "app_subnet_id" {
  description = "ID of the application subnet."
  value       = module.network.app_subnet_id
}

output "management_subnet_id" {
  description = "ID of the management subnet."
  value       = module.network.management_subnet_id
}