output "api_management_gateways_id" {
  description = "Map of id values across all api_management_gateways, keyed the same as var.api_management_gateways"
  value       = { for k, v in azurerm_api_management_gateway.api_management_gateways : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_gateways_api_management_id" {
  description = "Map of api_management_id values across all api_management_gateways, keyed the same as var.api_management_gateways"
  value       = { for k, v in azurerm_api_management_gateway.api_management_gateways : k => v.api_management_id if v.api_management_id != null && length(v.api_management_id) > 0 }
}
output "api_management_gateways_description" {
  description = "Map of description values across all api_management_gateways, keyed the same as var.api_management_gateways"
  value       = { for k, v in azurerm_api_management_gateway.api_management_gateways : k => v.description if v.description != null && length(v.description) > 0 }
}
output "api_management_gateways_location_data" {
  description = "Map of location_data values across all api_management_gateways, keyed the same as var.api_management_gateways"
  value       = { for k, v in azurerm_api_management_gateway.api_management_gateways : k => v.location_data if v.location_data != null && length(v.location_data) > 0 }
}
output "api_management_gateways_name" {
  description = "Map of name values across all api_management_gateways, keyed the same as var.api_management_gateways"
  value       = { for k, v in azurerm_api_management_gateway.api_management_gateways : k => v.name if v.name != null && length(v.name) > 0 }
}

