output "api_management_gateways" {
  description = "All api_management_gateway resources"
  value       = azurerm_api_management_gateway.api_management_gateways
}
output "api_management_gateways_api_management_id" {
  description = "List of api_management_id values across all api_management_gateways"
  value       = [for k, v in azurerm_api_management_gateway.api_management_gateways : v.api_management_id]
}
output "api_management_gateways_description" {
  description = "List of description values across all api_management_gateways"
  value       = [for k, v in azurerm_api_management_gateway.api_management_gateways : v.description]
}
output "api_management_gateways_location_data" {
  description = "List of location_data values across all api_management_gateways"
  value       = [for k, v in azurerm_api_management_gateway.api_management_gateways : v.location_data]
}
output "api_management_gateways_name" {
  description = "List of name values across all api_management_gateways"
  value       = [for k, v in azurerm_api_management_gateway.api_management_gateways : v.name]
}

