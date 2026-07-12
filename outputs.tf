output "api_management_gateways_id" {
  description = "Map of id values across all api_management_gateways, keyed the same as var.api_management_gateways"
  value       = { for k, v in azurerm_api_management_gateway.api_management_gateways : k => v.id }
}
output "api_management_gateways_api_management_id" {
  description = "Map of api_management_id values across all api_management_gateways, keyed the same as var.api_management_gateways"
  value       = { for k, v in azurerm_api_management_gateway.api_management_gateways : k => v.api_management_id }
}
output "api_management_gateways_description" {
  description = "Map of description values across all api_management_gateways, keyed the same as var.api_management_gateways"
  value       = { for k, v in azurerm_api_management_gateway.api_management_gateways : k => v.description }
}
output "api_management_gateways_location_data" {
  description = "Map of location_data values across all api_management_gateways, keyed the same as var.api_management_gateways"
  value       = { for k, v in azurerm_api_management_gateway.api_management_gateways : k => v.location_data }
}
output "api_management_gateways_name" {
  description = "Map of name values across all api_management_gateways, keyed the same as var.api_management_gateways"
  value       = { for k, v in azurerm_api_management_gateway.api_management_gateways : k => v.name }
}

